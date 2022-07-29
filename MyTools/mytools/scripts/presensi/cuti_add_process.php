

<?
   	print "userid = $_POST[userid]"."<BR>";
   	print "nama = $_POST[nama]"."<BR>";
   	print "tgl_input1 = $_POST[tgl_input1]"."<BR>";
	print "tgl_input2 = $_POST[tgl_input2]"."<BR>";

?>



<?php

include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
$aSQL = " SELECT DATEDIFF('$_POST[tgl_input2]','$_POST[tgl_input1]') as result";
$aQResult=mysql_query($aSQL);

       while ($aRow = mysql_fetch_array($aQResult))
       {
       $result_=$aRow["result"];
	   print "result_=".$result_."<br>";
	   }
?>


<?php

for ($i = 0; $i <= $result_; $i++) {

include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
$aSQL1 = "SELECT DATE_ADD('$_POST[tgl_input1]', INTERVAL $i DAY) as hasil";
$aQResult1=mysql_query($aSQL1);

       while ($aRow1 = mysql_fetch_array($aQResult1))
       {
       $hasil_=$aRow1["hasil"];
	   //print "hasil_=".$hasil_."<br>";
	   
	   	$thn=substr($aRow1["hasil"],0,4);
		$bln=substr($aRow1["hasil"],5,2);
		$tgl=substr($aRow1["hasil"],8,2);
		
		print $thn."/".$bln."/".$tgl."<br>";
		
		include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
		$aSQL2 = "UPDATE t_presensi_frame set tgl$tgl ='3'
		where userid='$_POST[userid]' and tahun='$thn' and bulan='$bln' ";
		$aQResult2=mysql_query($aSQL2);

	
		include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
		$aSQL3 = "INSERT INTO t_presensi_list (userid, nama, date_presensi, time_presensi, desc_presensi, remoteaddress, keterangan) 
		VALUES ('$_POST[userid]','$_POST[nama]', '$hasil_', curtime(), '1', '$_SERVER[REMOTE_ADDR]', 'CUTI' )";
		$aQResult3=mysql_query($aSQL3);
	

	   }
	   
}

?>


	
	
	

<script javascript="JavaScript">
        location.href="presensi_list.php";
</script>


