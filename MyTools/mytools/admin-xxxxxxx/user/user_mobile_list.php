<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";

	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	print "c_profile0=".$_SESSION['c_profile0']."<br>";

	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from t_user_mobile";
	$aQResult=mysqli_query($conn, $aSQL);

	//$nSQL = "SELECT COUNT(*) as jumlah from t_user_web_bges";
	$nSQL = "SELECT COUNT(*) as jumlah from t_user_mobile";
	$nQResult = mysqli_query($conn, $nSQL);

	$n = 0;
	
	while($row = mysqli_fetch_assoc($nQResult)){
		$n = $row['jumlah'];
	}

	$script_name=trim($_SERVER["SCRIPT_NAME"]);
	//echo "script_name=".$script_name."<br>";
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
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>USER MOBILE</b></font>
<br><br>
<table border="0" cellpadding="1" cellspacing="1">
	<tr><td colspan="2" align="left" width="100"><a href="user_mobile_add.php" title="Add">Add User Mobile</a></td><td colspan="2" align="right" width="300">Existing user(s) : <?php echo $n?></td></tr>
</table>	
<br>



<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="center" width="70"><b>WITEL</b></td>
		<td align="left" width="50"><b>USERID</b></td>
		<td align="left" width="200"><b>NAMA</b></td>
		<td align="left" width="50"><b>C_PROFILE</b></td>
        <td align="left" width="200"><b>PASS</b></td>
		<td align="left" width="100"><b>HANDPHONE</b></td>
		<td align="left" width="100"><b>IMEI</b></td>
		<td align="left" width="50"><b>FLAGGING</b></td>
		<td align="left" width="50"><b>FLAGGING_2</b></td>
		
		<td align="left" width="50"><b>ANDROID_VERSION</b></td>
		

		<td colspan="2" align="center" width="100px"><b>ACTION</b></td>
	</tr>
	
<?php
		$no = 0;
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	
       $idx_=$aRow["idx"]; //****************** kuncinya ************************
	   
	   
?>
	
	
	<tr class="isi">
		<td align="center"><?php echo $no;?></td>
		<td align="left"><?php echo $aRow["witel"];?></td>
		<td align="left"><?php echo $aRow["userid"];?></td>
		<td align="left"><?php echo $aRow["nama"];?></td>
		<td align="left"><?php echo $aRow["c_profile"];?></td>
		<td align="left"><?php echo $aRow["pass"];?></td>
		
		<td align="left"><?php echo $aRow["handphone"];?></td>
		<td align="left"><?php echo $aRow["imei"];?></td>
		<td align="left"><?php echo $aRow["flagging"];?></td>
		<td align="left"><?php echo $aRow["flagging_2"];?></td>
		
		<td align="left"><?php echo $aRow["android_version"];?></td>
		
		
		
		
		<td align="center"><a href='user_mobile_modify.php?idx=<?php echo $idx_;?> '><img src="../../images/edit.gif" border="0"></a></td>
		<td align="center"><a href='user_mobile_delete.php?idx=<?php echo $idx_;?> '><img src="../../images/delete.gif" border="0"></a></td>
	
	</tr>
	

<?php
}
?>

</table>

</body>
</html>
