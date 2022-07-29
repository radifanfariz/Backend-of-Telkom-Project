

<?php
   //echo "DOCUMENT_ROOT=".$_SERVER["DOCUMENT_ROOT"]."<br>";   
   $DOCUMENT_ROOT=$_SERVER["DOCUMENT_ROOT"]."<br>";    
?>

<?php
  //echo "files1=".$_GET[files]."<br>"; 
?>




<?php
	{
	
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	   $strSQL = "DROP TABLE IF EXISTS t_psbpots_backup";
	$qry = mysql_query($strSQL) or die ("Query1 salah_1");
	echo "success_1..., DROP TABLE IF EXISTS t_psbpots_backup"."<br>";
	
	}
?>



<?php
	{
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	   $strSQL = "CREATE TABLE t_psbpots_backup SELECT * FROM t_psbpots";
	$qry = mysql_query($strSQL) or die ("Query salah_2");
	echo "success_2..., CREATE TABLE t_psbpots_backup SELECT * FROM t_psbpots"."<br>";
	}
?>


<?php
	{
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "truncate t_psbpots";
	$qry = mysql_query($strSQL) or die ("Query salah_3");
	echo "success_3..., truncate t_psbpots"."<br>";
	}
?>



<?php
	{
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	//$strSQL = "LOAD DATA LOCAL INFILE 'd:/xampplite/htdocs/psbmedan/swords/web/admin/scripts/uploadfile_pots/data/$_GET[files]' INTO TABLE t_psbpots FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 2 LINES";
	$strSQL = "LOAD DATA LOCAL INFILE 'd:/xampplite/htdocs/webbasic/scripts/upload_csvfile_database/temporary_files/$_GET[files]' INTO TABLE t_psbpots FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n' IGNORE 2 LINES";
	$qry = mysql_query($strSQL) or die ("Query salah_4");
	echo "success_4..., LOAD DATA LOCAL INFILE"."<br>";
	}
?>


<?php
	{
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "insert into p_tgl_upload (tgl_upload, nama_file) values (sysdate() ,'$_GET[files]')";
	$qry = mysql_query($strSQL) or die ("Query salah_5");
	echo "success_5..., insert into p_tgl_upload"."<br>";
	}
?>



<?	
	$myFile = $_SERVER["DOCUMENT_ROOT"]."/webbasic/scripts/upload_csvfile_database/temporary_files/$_GET[files]"; 
	unlink($myFile);
	echo "success_6..., delete temporary file .....".$_GET[files]."<br>"."<br>";
?>

<a href="database_csvfile.php">View-Database-csvfile</a>