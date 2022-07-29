<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!--Bab7-1.html-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Presensi</title>
<style type="text/css">




label {
width: 4em;
float: left;
text-align: right;
margin-right: 0.5em;
display: block
}
.submit input {
margin-left: 4.5em;
}

input {
color: #781351;
background: #fee3ad;
border: 1px solid #781351
}
.submit input {
color: #000;
background: #ffa20f;
border: 2px outset #d7b9c9
}
fieldset {
border: 1px solid #781351;
width: 20em
}
legend {
color: #fff;
background: #ffa20c;
border: 1px solid #781351;
padding: 2px 6px
}

</style>
</head>
<body>
<center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<script LANGUAGE=JAVASCRIPT TYPE="text/javascript" >

function cek()
{
 var a=document.inputan.userid.value;
 var b=document.inputan.password.value;



 if(a=='')
 {
    alert('Please enter userid ... !!!');
 	return false;
 }

 if(b=='')
 {
    alert('Please enter password ... !!!');
 	return false;
 }
 

   
  
 else
 {return true;}
}

</script>







<form name="inputan" action="presensi_process.php" method="post" onSubmit="return cek()">

<fieldset>
<legend>Presensi Masuk Kerja</legend>
 <p><label for="userid_">UserId</label><input type="text" name="userid" size="18" value="780002" /></p>
 <p><label for="password_">Password</label><input type="Password" name="password" size="20" value="telkom" /></p>
 <p class="submit"><input type="submit" value="Submit" /></p>
</fieldset>
</form>
</body>
</html>
