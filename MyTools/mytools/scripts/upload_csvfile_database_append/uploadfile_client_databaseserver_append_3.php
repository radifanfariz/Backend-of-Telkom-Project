<?php
   //echo "DOCUMENT_ROOT=".$_SERVER["DOCUMENT_ROOT"]."<br>";   
?>

<!--- Upload file success.....<br><br> --->

<br>


<?
$path = $_SERVER["DOCUMENT_ROOT"]."/webbasic/scripts/upload_csvfile_database_append/temporary_files/"; 

$dir = opendir ($path); 
while (false !== ($file = readdir($dir))) 
{
	if (strpos($file, '.csv',1)||strpos($file, '.xxx',1) ) 
	{
	print "Upload file ".$file." ......sucess...."."<br>";
	echo "For upload & convert to Database, please click this file: "."<a href=uploadfile_client_databaseserver_append_4.php?files=$file>$file</a><br/>"; 
	}
}
?>





