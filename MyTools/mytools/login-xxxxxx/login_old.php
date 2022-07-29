<?php
	//$link=$_GET[link];
	//echo "link=".$link."<br>";
?>

<HTML>
<HEAD>
	<TITLE>Login</TITLE>
	<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
	<META content="MSHTML 5.50.4134.100" name=GENERATOR>
	<LINK href="../css/admin_login.css" type=text/css rel=STYLESHEET>	


<script LANGUAGE=JAVASCRIPT TYPE="text/javascript" >

function cek()
{
 var a=document.formAction.login.value;
 var b=document.formAction.password.value;
 if(a=='')
 {
    alert('UserID belum diisi');
 	return false;
 }
 else if(b=='')
 {
 	alert('Password belum diisi');
	return false;
 }
 else
 {return true;}
}

</script>

</HEAD>

<BODY bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0" onload="document.formAction.login.focus()">

<div id="ctr" align="center">	
	<div class="login">
		<div class="login-form">
			<img src="../images/login.gif" alt="Login" />
			<!--- <FORM NAME="formAction" ACTION="login_process9.php" METHOD=POST onSubmit="return cek()" TARGET="default"> --->
			
			<!--- <FORM NAME="formAction" ACTION="login_process.php" METHOD=POST TARGET="default"> --->
			
			
			<form method="post" action="login_process.php"> <!--login_process.php-->
			<div class="form-block">
			<input type="hidden" name="LogIn" value="yes">
				<div class="inputlabel">UserID</div>
				<div><INPUT TYPE="Text" NAME="login" SIZE="10" MAXLENGTH="6" class="inputbox" value=""></div>
				<div class="inputlabel">Password</div>
				<div><INPUT TYPE="password" NAME="password" MAXLENGTH="20" class="inputbox" value=""></div>
				<div align="left"><input type="submit" title="Login" value="Enter" class="Button"></div>

			</div>
			</form>
		</div>
		<div class="login-text">
			<div class="ctr"><img src="../images/security.png" width="64" height="64" alt="security" /></div>
			<p><font color="#ff0000"><b>User Authentication</b></font></p>
			<!--- <p>Masukkan Login/Password Anda. --->
<!---       <br>Gunakanlah NIK dan Password <font color="#ff0000"><b>Nota Dinas</b></font> Anda.</font></p> --->
		</div>
		<div class="clr"></div>
	</div>
</div>
<div id="break"></div>

</BODY></HTML>




