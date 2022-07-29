<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
?>



<HTML>
<HEAD>
<TITLE> Form </TITLE>

<?php
   //include "../../login/auth.php";
?>





<?php

   //print "login2 = $login"."<BR>";
   //print "password2 = $password"."<BR>";
   //print "profile2 = $c_profile"."<BR>";	

   if ($client_profile == Null)
   {
    //print "Please Login First";
    //include "login.html";	     
    //exit();
    
	//include "../../attention_please.html";
    //exit();
   }


?>







<SCRIPT LANGUAGE="JavaScript">
function pesan() {

var cek_nik = document.forms[0].elements[0].value;
var cek_subject = document.forms[0].elements[1].value;
var cek_news = document.forms[0].elements[2].value;

if (cek_nik.length == 0) {
	window.alert("Anda belum memasukkan UserID");
} else {
if ((cek_subject.length == 0)) {
	window.alert("Anda belum memasukan Subject");
} else {
if ((cek_news.length == 0)) {
	window.alert("Anda belum memasukan News");
} else {
	document.forms[0].submit();
}
}
}
}


</SCRIPT>
</HEAD>




<BODY bgcolor="#C4FFFF">
<H1> Add Hot News1 </H1>
<BR>
   <!--- <FORM NAME="identity" METHOD="post" ACTION="hotnews_add1_process.php"> --->
   <form enctype="multipart/form-data" action="uploadfile_client_databaseserver_2.php" method="POST">
   
	<PRE>

	USERID	 	<INPUT TYPE="text" readonly="yes" NAME="userid" value="<?print $_SESSION[login0] ?>">
	
	Subject	 	<INPUT TYPE="text" NAME="subject">

					<input type="hidden" name="MAX_FILE_SIZE" value="100000000000" /> <!--- value="100000000000", total 12 digit OK --->
	
	Upload File:	<input name="uploadedfile" type="file"/>
					<!--- <input type="submit" value="Execute"/> --->


<!--- </form> --->

	
	
	
	
	News     <TEXTAREA NAME="news" ROWS=10 COLS=70>
	</TEXTAREA>
		 <!--- <INPUT TYPE="button" VALUE="Submit" onClick=pesan()> --->
		 <input type="submit" value="Execute"/>
		 
	</PRE>
   </FORM>
</BODY>
</HTML>
