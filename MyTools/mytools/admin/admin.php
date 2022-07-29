<?php

	
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	
	
	//print "c_profile0=".$_SESSION[c_profile0]."<br>";
?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	
	<style>
	td {font : 12px Arial;height:20}
	.box {font-size:10px;border : 1px solid #000000;background-color: #efefef}
	</style>

<center>

<script language=JavaScript>

var ie=document.all?1:0;
var ns=document.layers?1:0;
var ns6=document.getElementById?1:0;

function LightOn(what, message)
	{
		if (ie||ns6)
			{
				window.status=message;
				what.style.backgroundColor='yellow';
				what.style.cursor='hand';
			}
		else window.status=message;
	}
function LightOut(what)
	{
		if (ie||ns6)
			{
				what.style.backgroundColor='#EFEFEF';
				window.status='';
			}
		else window.status='';
	}

//-->
</script>
</head>

<body topmargin="0" leftmargin="0" bgcolor="#A8A8FF">


<TABLE WIDTH="100%" BORDER=0 CELLPADDING=0 CELLSPACING=0></TABLE>


<!--- <h5>
	DBA Menu Only
	<hr>
</h5>
 --->
<table><tr><td>


<!---  --->
<table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Administrasi-1" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)" onmouseover="LightOn(this,'Administrasi')"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td valign="bottom"><img src="../images/dot.gif" width="1" height="10" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="User Web Server                       " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)" onmouseout="LightOut(this)" onclick="location.href='user/user_list.php'"></td>
  
  </tr>
  
   
  <tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="20" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="User Mobile Apps                        " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='user/user_mobile_list.php'"></td>
  </tr>
  

  
  <tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="20" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="Profile                                " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='param/profile_list.php'"></td>
  </tr>
  <!--- 
  
  <tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="20" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="Update Data BGES                        " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../data_list_org.php'"></td>
  </tr>
     --->
	
	
  <tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="20" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="Hotnews                             " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='hotnews/hotnews_list.php'"></td>
  </tr>

  <tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="20" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="Witel_Datel_Sto                " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='param/witel_datel_sto.php'"></td>
  </tr>
  
<tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="10" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
  	<td><input type="Button" value="" style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)" onmouseover="LightOn(this,'Administrasi')"></td>
</tr>
  
  
</table>

<p>

<!--- yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy --->

<!---  --->
<table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Administrasi-2" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)" onmouseover="LightOn(this,'Administrasi')"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td valign="bottom"><img src="../images/dot.gif" width="1" height="10" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
	<td><input type="Button" value="VISITOR           " style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../home/visitor_list.php'"></td>
  </tr>
  

  
<tr>
  	<td colspan="2"></td>
	<td valign="top"><img src="../images/dot.gif" width="1" height="10" alt="" border="0" align="bottom"></td>
	<td><img src="../images/dot.gif" width="25" height="1" alt="" border="0"></td>
  	<td><input type="Button" value="" style="width:130;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)" onmouseover="LightOn(this,'Administrasi')"></td>
</tr>
  
  
</table>
 
  
 
 
 
 
 
 <table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Change Password" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../login/password_change.php'"></td>
  </tr>
</table>

<table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Logout" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../login/logout.php'"></td>
  </tr>
</table>


<table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Directory List" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../home/directory.php'"></td>
  </tr>
</table>


<table cellpadding="0" cellspacing="0">
  <tr>
	<td><input type="Button" value="Scripts" style="width:150;" class="box" onmouseover="LightOn(this,'Administrasi')" onmouseout="LightOut(this)"  onclick="location.href='../scripts/scripts.php'"></td>
  </tr>
</table>


</td></tr></table>

