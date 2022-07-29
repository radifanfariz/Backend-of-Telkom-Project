<?php

	//echo "pilih_tgl_awal = ". $_POST['pilih_tgl_awal']."<br>";
	//echo "pilih_tgl_akhir = ". $_POST['pilih_tgl_akhir']."<br>";
	
	$pilih_tgl_awal= $_POST['pilih_tgl_awal'];
	$pilih_tgl_akhir= $_POST['pilih_tgl_akhir'];
	$pilih_witel= $_POST['pilih_witel'];
	
	
	//echo "pilih_tgl_awal = ". $pilih_tgl_awal;
	//echo "<br>";
	//echo "pilih_tgl_akhir = ". $pilih_tgl_akhir;
?>



<?php
	if($pilih_tgl_awal !='' and $pilih_tgl_akhir !='' and $pilih_witel !='')
		{
?>





<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	//$_SESSION['c_profile0']=0;
	//print "c_profile0=".$_SESSION['c_profile0']."<br>";

?>


<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
	
SELECT 
	(6378 * acos( cos( radians(latitude_inst_addr) ) * cos( radians( latitude_odp ) ) * 
	cos( radians( longitude_odp ) - RADIANS(longitude_inst_addr) ) + sin( RADIANS(latitude_inst_addr) ) * sin( radians( latitude_odp ) ) ) ) 
	AS distance, date(timestamp) AS tanggal, regional, witel, service_order, service_type, service_number, cust_name, inst_addr, 
	latitude_inst_addr, longitude_inst_addr, stp_name, stp_panel, stp_port, latitude_odp, longitude_odp, barcode_dw, user_id
FROM images
WHERE (date(timestamp) BETWEEN '$pilih_tgl_awal' AND '$pilih_tgl_akhir' ) and (witel='$pilih_witel')
order by tanggal asc
	
	";
	
	$aQResult=mysqli_query($conn, $aSQL);
?>





 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>
</head>

<body bgcolor="#D8D8D8">



<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>CHECKING COORDINATE DISTANCE DI WITEL <?php echo $pilih_witel?></b></font><br>
<font color="blue" size="4" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $pilih_tgl_awal?> S/D <?php echo $pilih_tgl_akhir?></b></font><br>
<br><br>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="220%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">






<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>	
		<td align="center" width="80"><b>TANGGAL</b></td>	
					
		<td align="left" width="80"><b>REGIONAL</b></td>
		<td align="left" width="80"><b>WITEL</b></td>
		<td align="center" width="90"><b>USER_ID</b></td>
		<td align="left" width="80"><b>LAT_INST_ADDR</b></td>
		<td align="left" width="80"><b>LONG_INST_ADDR</b></td>
		<td align="left" width="80"><b>LAT_ODP</b></td>
		<td align="left" width="80"><b>LONG_ODP</b></td>
		
		<td align="left" width="80"><b>JARAK_COORDINATE ODP_RMH</b></td>
		
		<td align="left" width="90"><b>SERVICE_ORDER</b></td>
		<td align="left" width="90"><b>SERVICE_TYPE</b></td>
		<td align="left" width="90"><b>SERVICE_NUMBER</b></td>
		<td align="left" width="80"><b>CUST_NAME</b></td>
		<td align="left" width="120"><b>INST_ADDR</b></td>
		

		
		<td align="left" width="160"><b>STP_NAME</b></td>
		<td align="left" width="90"><b>STP_PANEL</b></td>
		<td align="left" width="40"><b>STP_PORT</b></td>
		

		
		
		
	</tr>
	
<?php
       $no = 0;
	   $distance=0;
	   $panjang=0;
	   
	   while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	
	   $panjang=$aRow["distance"]*1000;

?>
	
	
	<tr class="isi">
	
	<td align="center"><?php echo $no;?></td>			
		<td align="left"><?php print $aRow["tanggal"];?></td>
		<td align="left"><?php print $aRow["regional"];?></td>
		
		<td align="left"><?php print $aRow["witel"];?></td>
		<td align="right"><?php print $aRow["user_id"];?></td>
			
		<td align="right"><?php print $aRow["latitude_inst_addr"];?></td>
		<td align="right"><?php print $aRow["longitude_inst_addr"];?></td>
		<td align="right"><?php print $aRow["latitude_odp"];?></td>
		<td align="right"><?php print $aRow["longitude_odp"];?></td>
	
		<?php 
		if ($panjang != 0)
		{
		?>
        <td align="right"><?php print $aRow["distance"]*1000;?></td>	
		<?php 
		}
		else
		{
		?>
		<td align="right" bgcolor="#ffff00"><?php print $aRow["distance"]*1000;?></td>	
	
		<?php
		}
		?>
	
	
		<td align="center"><?php print $aRow["service_order"];?></td>
		<td align="left"><?php print $aRow["service_type"];?></td>
		<td align="left"><?php print $aRow["service_number"];?></td>
				
		<td align="left"><?php print $aRow["cust_name"];?></td>
		<td align="left"><?php print $aRow["inst_addr"];?></td>
						
		<td align="left">&nbsp;&nbsp;&nbsp;<?php print $aRow["stp_name"];?></td>
		<td align="left"><?php print $aRow["stp_panel"];?></td>
		<td align="center"><?php print $aRow["stp_port"];?></td>

	</tr>
	

<?php
}
?>

</table>
</td></tr></table></center></body></html>



				
<?php
		}
	else
		{
		echo "<br>"."Silahkan pilih..."."<br>";
		}
?>



