
<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	print "login0=". $_SESSION[login0]. "<br>";
	print "password0=".$_SESSION[password0]."<br>";
	print "nama0=". $_SESSION[nama0]. "<br>";
	print "c_profile0=".$_SESSION[c_profile0]."<br>"."<br>";
?>

<?
if ($_SESSION[c_profile0] =="")
{{{
include "login/attention_please.php"; 
exit();
}}}

elseif ($_SESSION[c_profile0] !="")

{{{
?>






<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL = "SELECT * from p_profile where c_profile = '01' and nama_form='/dim/admin/scripts/uploadfile4/uploadfile_client_databaseserver1.php'";	//profile per file
  	$aQResult = mysql_query($aSQL);
?>


	
<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	
?>
	
	 

	
	<?print "nama_form=".$aRow["nama_form"]."<br>";?>
	
	<?}?>
	
	
	

<?
}}}
?>

