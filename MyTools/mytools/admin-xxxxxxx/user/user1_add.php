<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>


<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL2 = "SELECT distinct(c_profile), l_profile  from p_profile where c_profile <> '00'";
   $aQResult2 = mysql_query($aSQL2);
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
 var a=document.inputan.userid.value;
 var b=document.inputan.nama.value;
 var c=document.inputan.select_profile.value;


 if(a=='')
 {
    alert('Please enter userid ... !!!');
 	return false;
 }

 if(b=='')
 {
    alert('Please enter nama ... !!!');
 	return false;
 }
 
  if(c=='')
 {
    alert('Please select profile ... !!!');
 	return false;
 }
 
   
  
 else
 {return true;}
}

</script>














<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">

<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>Registrasi User</b></font>
<br><br>



<form name="inputan" action="user_add_process.php" method="post" onSubmit="return cek()">

<table cellpadding="0" cellspacing="0" bgcolor="#ff00ff">

<tr>
<td>NIK</td><td><input type="text" name="userid" maxlength="6" size="6"></td>
</tr>

<tr>
<td>NAMA</td><td><input type="text" name="nama" maxlength="50" size="30"></td>
</tr>

<tr>
<td>USER-PROFILE</td><td><input type="text" name="select_profile" maxlength="6" size="6" readonly="yes" value="01"></td>
</tr>





			
			
	<tr><td>Password</td> <td><input type="Text" name="password" size="6" maxlength="16" readonly="yes" value="telkom">Next, please change your Password .</td></tr>			



<tr><td height="5"></td><td></td></tr>
<tr>
<td></td><td><input type="submit" value="SUBMIT"></td>
</tr>
</table>
</form>

</body>
</html>

