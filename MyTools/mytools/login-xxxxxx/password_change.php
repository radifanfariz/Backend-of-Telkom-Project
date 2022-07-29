<?php
	session_start();
?>

<?php
//include "auth.php";
?>


<?php
	//session_start();
	//echo "login0=".$_SESSION[login0]. "<br>";
	//echo "password0=".$_SESSION[password0]."<br>";
?>


<head>
	<title>Data Module</title>
	<LINK href="../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<?php	
if($_SESSION[c_profile0]!=null)   
{
?>	

<form action="password_change_process.php" method="POST">
	<h3>Change Password</h3> 
	<table cellpadding="0" cellspacing="0" bgcolor="#ff00ff" border="1">
		<tr class="head"><td  bgcolor="#D8B0FF">NIK</td> <td BGColor="#d5e9b3">: <input type="TEXT" name="nik" value="<?php echo$_SESSION[login0]?>"></td></tr>		
		<tr class="head"><td  bgcolor="#D8B0FF">Password lama</td> <td BGColor="#d5e9b3">: <input type="Password" name="password_lama" required="yes"></td></tr>
		<tr class="head"><td  bgcolor="#D8B0FF">Password baru</td> <td BGColor="#d5e9b3">: <input type="Password" name="password_baru" required="yes"></td></tr>
		<tr class="head"><td  bgcolor="#D8B0FF">Konfirmasi password baru &nbsp;</td> <td BGColor="#d5e9b3">: <input type="Password" name="password_baru2" required="yes"></td></tr>
	</table>
	<input type="Hidden" name="change_password" value="yes">
	<input type="Submit" value="Submit">
</form>

<?php
}
?>


<cfelse>
	<p></p>Jika anda ingin mengubah password, anda harus <a href="login.php?focus=userid">Login</a> terlebih dahulu ...
</cfif>



