<HTML>
<HEAD>
<TITLE> HotNews </TITLE>
</HEAD>
<BODY BGCOLOR=#ffffff>


<?php
	//session_start();
?>

<?php
   print "login = $login"."<BR>";
   print "password = $password"."<BR>";
   print "profile = $c_profile"."<BR>";
?>

<?php

	$userid=$HTTP_POST_VARS['userid'];
	$subject=$HTTP_POST_VARS['subject'];
	$news=trim($HTTP_POST_VARS['news']);


  	//if ($userid = '651084')
    //  		print ("Anda useridnya 651084");
  	//else
    //  		print "Welcome to MyHomePage";



	
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_hotnews (userid, subject, news, tgl_jam) VALUES ('$userid','$subject','$news', now())";
	$qry = mysql_query($strSQL,$conn) or die ("Query salah");
?>

<script javascript="JavaScript">
        location.href="hotnews.php";
</script>

