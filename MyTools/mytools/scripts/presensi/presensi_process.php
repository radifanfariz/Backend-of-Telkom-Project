<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<?php
$timezone = "Asia/Jakarta";
if(function_exists('date_default_timezone_set')) date_default_timezone_set($timezone);
//echo date('d-m-Y H:i:s');
?>


<?
   	print "userid = $_POST[userid]"."<BR>";
   	print "password = $_POST[password]"."<BR>";
	
   	$thn=date ("Y");
   	$bln=date ("m");
   	$tgl=date ("d");
	
   	print "thn=".$thn."<br>";
	print "bln=".$bln."<br>";
	print "tgl=".$tgl."<br>";
	
	//print (date ("Y-m-d")."<br>");
	$date=date ("Y-m-d");
	print "date=".$date."<br>";
	
	
?>



<?
	$waktu=date ("H:i:s");
	print "waktu=".$waktu."<br>";
	if($waktu <="17:00:00"){
		print "tidak telat"."<br>";}
	else{
		print "telat"."<br>";}
	end
?>


<!--- Checking Presensi --->
<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL = " SELECT count(userid) as hasil from t_presensi_list where userid='$_POST[userid]' and date_presensi='$date' ";
	$aQResult=mysql_query($aSQL);
       while ($aRow = mysql_fetch_array($aQResult))
       {
       $hasil=$aRow["hasil"];
	   print "hasil=".$hasil."<br>";
	   }
?>







<?php
if($hasil==0){



	if($waktu <="08:00:00"){
		//print "tidak telat"."<br>";}
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL1 = "INSERT INTO t_presensi_list (userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress) 
	VALUES ('$_POST[userid]','$_POST[nama]',curdate(), curtime(), '1', '$_SERVER[REMOTE_ADDR]' )";
	$aQResult1=mysql_query($aSQL1);
	
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL = "UPDATE t_presensi_frame set tgl$tgl ='1' 
	where userid='$_POST[userid]' and tahun='$thn' and bulan='$bln' ";
	$aQResult=mysql_query($aSQL);
	
	}

	else{
		//print "telat"."<br>";
		include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
		$aSQL1 = "INSERT INTO t_presensi_list (userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress) 
		VALUES ('$_POST[userid]','$_POST[nama]',curdate(), curtime(), '2', '$_SERVER[REMOTE_ADDR]' )";
		$aQResult1=mysql_query($aSQL1);
		
		include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
		$aSQL = "UPDATE t_presensi_frame set tgl$tgl ='2' 
		where userid='$_POST[userid]' and tahun='$thn' and bulan='$bln' ";
		$aQResult=mysql_query($aSQL);
	
		}
}
?> 

	
	
	
	

<script javascript="JavaScript">
        //location.href="presensi_list.php";
</script>



</body>
</html>
