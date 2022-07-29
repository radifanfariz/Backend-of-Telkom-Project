<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	print "c_profile0=".$_SESSION[c_profile0]."<br>";
?>


<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from t_user";
	$aQResult=mysql_query($aSQL);
?>

<?
$script_name=trim($_SERVER["SCRIPT_NAME"]);
echo "script_name=".$script_name."<br>";
?>



 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#D8D8D8">

<center>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">


<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>Administrasi user</b></font>
<br><br>
<table border="0" cellpadding="1" cellspacing="1">
	<tr><td colspan="2" align="left" width="100"><a href="user_add.php" title="Add">Add user</a></td><td colspan="2" align="right" width="300">Existing user(s) : <?print $n?></td></tr>
</table>	
<br>



<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="center" width="70"><b>userid</b></td>
		<td align="left" width="160"><b>NAMA</b></td>
		<td align="left" width="50"><b>PROFILE</b></td>
		<td colspan="2" align="center" width="100px"><b>ACTION</b></td>
	</tr>
	
<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	
       $userid_=$aRow["userid"]; //****************** kuncinya ************************
?>
	
	
	<tr class="isi">
		<td align="center"><?=$no;?></td>
		<td align="left"><?print $aRow["userid"];?></td>
		<td align="left"><?print $aRow["nama"];?></td>
		<td align="left"><?print $aRow["c_profile"];?></td>
		
		<td align="center"><a href='user_modify.php?userid=<?print $userid_?> '><img src="../../images/edit.gif" border="0"></a></td>
		<td align="center"><a href='user_delete.php?userid=<?print $userid_?> '><img src="../../images/delete.gif" border="0"></a></td>
	
	</tr>
	

<?}?>

</table>

</body>
</html>
