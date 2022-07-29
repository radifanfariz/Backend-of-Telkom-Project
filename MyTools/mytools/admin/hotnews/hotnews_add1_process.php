<HTML>
<HEAD>
<TITLE> HotNews </TITLE>
</HEAD>
<BODY BGCOLOR=#ffffff>


<?php
	//session_start();
?>

<?
	//$namafile=basename( $_FILES['uploadedfile']['name']);
	
	print "userid=".$_POST[userid]."<br>";
	print "subject=".$_POST[subject]."<br>";
	print "uploadedfile=".$_POST[uploadedfile]."<br>"."<br>";
	
	
	print "namafile=".$namafile."<br>"."<br>";
	
	print "eviden1=".$_POST[MAX_FILE_SIZE]."<br>";
	
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
?>




<?
//$targetpath = "d:/_abc_fileupload/";
//$targetpath = "d:/xampplite/htdocs/school/pictures/";

$target_path = $_SERVER["DOCUMENT_ROOT"]."/school/pictures/";
  



$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 

if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
    echo "The file ".  basename( $_FILES['uploadedfile']['name'])." has been uploaded";
} else{
    echo "There was an error uploading the file, please try again!";
}

?>




<?
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_hotnews (userid, subject, news, pictures, tgl_jam) VALUES ('$userid','$subject','$news','$namafile', now())";
	$qry = mysql_query($strSQL,$conn) or die ("Query salah");
?>

<script javascript="JavaScript">
        //location.href="hotnews.php";
</script>

