<?php
	//include "../../auth.php";
?>

<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from t_hotnews order by tgl_jam desc";
	$aQResult=mysql_query($aSQL);
?>

<?php
   //$aDBLink=mysql_connect("localhost", "root", "telkom");
   //mysql_select_db ("dB_speedy", $aDBLink);
   //$aSQL = "SELECT * from t_user";
   //$aQResult = mysql_query($aSQL, $aDBLink);
   
   //$n=mysql_num_rows($aQResult);
   //print "<br>"."total=".$n;
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
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>Administrasi Hotnews</b></font>
<br><br>


<table border="0" cellpadding="1" cellspacing="1">
	<tr><td colspan="2" align="left" width="100"><a href="hotnews_add.php" title="Add">AddNews</a></td><td colspan="2" align="right" width="300"></td></tr>
</table>	
<br>

<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="left" width="70"><b>USERID</b></td>
		<td align="left" width="70"><b>SUBJECT</b></td>
		<td align="left" width="50"><b>TGL_JAM</b></td>
		<td colspan="2" align="center" width="100px"><b>ACTION</b></td>
	</tr>
	
<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	
       $id_=$aRow["id"]; //****************** kuncinya ************************
?>
	
	
	<tr class="isi">
		<td align="center"><?=$no;?></td>
		<td align="left"><?print $aRow["userid"];?></td>
		<td align="left"><?print $aRow["subject"];?></td>
		<td align="left"><?print $aRow["tgl_jam"];?></td>
		<td align="center"><a href='hotnews_modify.php?id=<?print $id_?> '><img src="../../images/edit.gif" border="0"></a></td>
		<td align="center"><a href='hotnews_delete.php?id=<?print $id_?> '><img src="../../images/delete.gif" border="0"></a></td>
	</tr>
	

<?}?>

</table>

</body>
</html>
