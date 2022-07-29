<?php
	$aRow["tanggal_awal"]='';
	$aRow["tanggal_akhir"]='';
	
	include "connection/_connection.php";
	$aSQL1 = "
	SELECT min(DATE(TIMESTAMP)) AS tanggal_awal FROM t_sales_force
	";
	//echo $aSQL1;
	$aQResult1=mysqli_query($conn, $aSQL1);
?>


<?php
		$no=0;
	   while ($aRow1 = mysqli_fetch_assoc($aQResult1))
       {
	   $no++;	
	   $tanggal_awal=$aRow1["tanggal_awal"];	
	   }
?>





	
<?php	

	include "connection/_connection.php";
	$aSQL2 = "
    SELECT max(DATE(TIMESTAMP)) AS tanggal_akhir FROM t_sales_force
	";
	//echo $aSQL2;
	$aQResult2=mysqli_query($conn, $aSQL2);
?>


<?php
		$no=0;
	   while ($aRow2 = mysqli_fetch_assoc($aQResult2))
       {
	   $no++;	
	   $tanggal_akhir=$aRow2["tanggal_akhir"];	
	   }
?>








<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/_connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
	
SELECT t_user_mobile.nama AS nama_sf, t_sales_force.*
FROM t_sales_force
LEFT JOIN t_user_mobile
ON t_sales_force.user_id=t_user_mobile.userid

	";
	$aQResult=mysqli_query($conn, $aSQL);
?>


 
 
<html>
	<head>
		<title>Administrasi >> user</title>
		<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>	
	</head>

	<body bgcolor="#D8D8D8">
		
			<table border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="200%">
				<tr>
					<td bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">
						<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
							<font color="witel" size="2" face="Verdana, Arial, Helvetica"><b>DATA PROVISIONING LIST ALL</b></font><br>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $tanggal_awal?> S/D <?php echo $tanggal_akhir?></b></font><br>
							<br><br>
							
							
							
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="60"><b>WITEL</b></td>
							<td align="left" width="80"><b>TIMESTAMP</b></td>
							<td align="left" width="80" bgcolor="#00ffff"><b>STATUS PROV</b></td>
							<td align="left" width="80" bgcolor="#ffff00"><b>CUST_NAME</b></td>
							<td align="left" width="180" bgcolor="#ffff00"><b>INST_ADDR</b></td>
							<td align="left" width="80" bgcolor="#FF91C8"><b>LAT INST_ADDR</b></td>
							<td align="left" width="80" bgcolor="#FF91C8"><b>LNG INST_ADDR</b></td>	
							<td align="left" width="80" bgcolor="#ffff00"><b>NO MYIR_SC</b></td>
							<td align="left" width="80" bgcolor="#ffff00"><b>INTERNET_NUMBER</b></td>
							<td align="left" width="80" bgcolor="#ffff00"><b>PHONE_NUMBER</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>STP_NAME</b></td>
							<td align="left" width="50" bgcolor="#AEFFD7"><b>STP_PANEL</b></td>
							<td align="left" width="50" bgcolor="#AEFFD7"><b>STP_PORT</b></td>
							<td align="left" width="80" bgcolor="#FF91C8"><b>LATITUDE_ODP</b></td>
							<td align="left" width="80" bgcolor="#FF91C8"><b>LONGITUDE_ODP</b></td>	
							<td align="left" width="80"><b>POWER_RX</b></td>
							<td align="left" width="80"><b>BARCODE_RESULT</b></td>
							<td align="left" width="80"><b>BARCODE_DW</b></td>
							<td align="left" width="80"><b>BARCODE_PORT</b></td>
							<td align="left" width="80"><b>KENDALA_TEKNIS</b></td>
							<td align="left" width="80"><b>KENDALA_CUSTOMER</b></td>
							<td align="left" width="80"><b>KENDALA_DESCRIPTION</b></td>
							<td align="left" width="80"><b>USERID_TECH</b></td>
							<td align="left" width="80"><b>USERID_SF</b></td>
							<td align="left" width="120"><b>NAMA_SF</b></td>
						</tr>
						
<?php
		$no = 0;
		$total_jumlah = 0;
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
		   $no++;	
		   //$total_jumlah+=$aRow["jumlah"];
?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>	
							<td align="left"><?php echo $aRow["timestamp"];?></td>
							<td align="left"><?php echo $aRow["status_prov"];?></td>
							<td align="left"><?php echo $aRow["cust_name"];?></td>
							<td align="left"><?php echo $aRow["inst_addr"];?></td>
							<td align="left"><?php echo $aRow["latitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["longitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["myir_sc"];?></td>
							<td align="left"><?php echo $aRow["internet_number"];?></td>
							<td align="left"><?php echo $aRow["phone_number"];?></td>
							<td align="left"><?php echo $aRow["stp_name"];?></td>
							<td align="left"><?php echo $aRow["stp_panel"];?></td>
							<td align="left"><?php echo $aRow["stp_port"];?></td>
							<td align="left"><?php echo $aRow["latitude_odp"];?></td>
							<td align="left"><?php echo $aRow["longitude_odp"];?></td>
							<td align="left"><?php echo $aRow["power_rx"];?></td>
							<td align="left"><?php echo $aRow["barcode_result"];?></td>
							<td align="left"><?php echo $aRow["barcode_dw"];?></td>
							<td align="left"><?php echo $aRow["barcode_port"];?></td>		
							<td align="left"><?php echo $aRow["kendala_teknis"];?></td>
							<td align="left"><?php echo $aRow["kendala_nonteknis"];?></td>
							<td align="left"><?php echo $aRow["keterangan_kendala"];?></td>		
							<td align="left"><?php echo $aRow["user_id2"];?></td>
							<td align="left"><?php echo $aRow["user_id"];?></td>
							<td align="left"><?php echo $aRow["nama_sf"];?></td>
						</tr>
<?php

		}

?>


  