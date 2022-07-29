<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL1 = "SELECT witel  from b_witel";
   $aQResult1 = mysqli_query($conn, $aSQL1);

	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL2 = "SELECT distinct(c_profile), l_profile  from p_profile where c_profile = '01' limit 1";
   $aQResult2 = mysqli_query($conn, $aSQL2);
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
	<title>Administrasi >> User</title>
	<LINK href="../../Style/epolice.css" type=text/css rel=STYLESHEET>			
</head>

<body bgcolor="#D8D8D8">

<center>



<script LANGUAGE=JAVASCRIPT TYPE="text/javascript" >

function cek()
{
 var a=document.inputan.witel.value;
 var b=document.inputan.nama.value;



 if(a=='')
 {
    alert('Please select witel ... !!!');
 	return false;
 }

 if(b=='')
 {
    alert('Please enter nama ... !!!');
 	return false;
 }
 

   
  
 else
 {return true;}
}

</script>














<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="#ffff00" background="../../images/background.jpg" valign="top">

<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>Add User Mobile</b></font>
<br><br>



<form name="inputan" action="user_mobile_add_process.php" method="post" onSubmit="return cek()">

<table cellpadding="0" cellspacing="0" bgcolor="#c0c0c0">



	<tr><td valign="middle">WITEL</td>
    <td>
		<select name="witel" size=1>
		<?php
			while ($aRow1 = mysqli_fetch_assoc($aQResult1)) {
		?>
			<option value="<?php echo $aRow1['witel'];?>"><?php echo $aRow1['witel'];?></option>
		<?php
			}
		?>	
	</select>
	</td></tr>
	
	


<tr>
<td>NAMA</td><td><input type="text" name="nama" maxlength="50" size="30"></td>
</tr>


	<tr><td valign="middle">C_Profile </td>
    <td>
		<select name="c_profile" size=1>

		<?php
		while ($aRow2 = mysqli_fetch_assoc($aQResult2)) {?>
			<option value="<?php echo $aRow2['c_profile'];?>"><?php echo $aRow2['c_profile'];?></option>
		<?php
		}
		?>	
	</select>
	</td></tr>



<tr><td>Pass</td> <td><input type="Text" name="pass" size="8" maxlength="16" readonly="yes" value="telkom2018"></td></tr>	
	
<tr>
<td>HANDPHONE</td><td><input type="text" name="handphone" maxlength="50" size="30"></td>
</tr>
	
<tr>
<td>IMEI</td><td><input type="text" name="imei" maxlength="50" size="30"></td>
</tr>
	


<tr>
<td>ANDROID_VERSION</td><td><input type="text" name="android_version" maxlength="50" size="30"></td>
</tr>









			
			
		



<tr><td height="5"></td><td></td></tr>
<tr>
<td></td><td><input type="submit" value="SUBMIT"></td>
</tr>
</table>
</form>

</body>
</html>

