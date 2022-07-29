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
   	$aSQL = "SELECT * from t_sales_force";
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
							<font color="witel" size="2" face="Verdana, Arial, Helvetica"><b>REKAP DATA SALES_FORCE</b></font><br>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $tanggal_awal?> S/D <?php echo $tanggal_akhir?></b></font><br>
							<br><br>
							
							
							
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="120"><b>TANGGAL</b></td>
							
							<td align="left" width="120" bgcolor="#ffff00"><b>NAMA-SF</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>SALESID_SF</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>PHONE-SF</b></td>
							
							<td align="left" width="120" bgcolor="#AEFFD7"><b>NAMA_CALANG</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>PHONE_CALANG</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>PACKET_INDIHOME</b></td>	
							
							<td align="left" width="120" bgcolor="#AEFFD7"><b>GOOGLE_INSTALLATION_ADDRESS</b></td>
							<td align="left" width="220" bgcolor="#AEFFD7"><b>INSTALATION_ADDRESS</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LAT INST_ADDR</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LNG INST_ADDR</b></td>	

								
							<td align="left" width="120"><b>PHOTO_RUMAH</b></td>
							<td align="left" width="120"><b>PHOTO_IDENTITAS</b></td>
							<td align="left" width="120"><b>PHOTO_SELFI</b></td>
							
							<td align="left" width="120"><b>PHOTO_ONT</b></td>
							<td align="left" width="120"><b>PHOTO_BA</b></td>
							<td align="left" width="120"><b>PHOTO_Rx_Power_ONT</b></td>
							
							<td align="left" width="80" bgcolor="#ffff00"><b>STATUS_CALANG</b></td>
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
							
							<td align="left">[NAMA_SF]</td>
							<td align="left"><?php echo "0".$aRow["user_id"];?></td>	
							<td align="left">[PHONE_SF]</td>

												
							<td align="left"><?php echo $aRow["cust_name"];?></td>
							<td align="left"><?php echo $aRow["hp"];?></td>
							<td align="left"><?php echo $aRow["packet_indihome"];?></td>
							
							<td align="left"><?php echo $aRow["google_addr"];?></td>
							<td align="left"><?php echo $aRow["inst_addr"];?></td>

							<td align="left"><?php echo $aRow["latitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["longitude_inst_addr"];?></td>

							
							
							
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename"];?>"><img src="_uploads/<?php echo $aRow["filename"];?>" alt="" width="120" height="80" border="0"></a></td>
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename2"];?>"><img src="_uploads/<?php echo $aRow["filename2"];?>" alt="" width="120" height="80" border="0"></a></td>
							
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename3"];?>"><img src="_uploads/<?php echo $aRow["filename3"];?>" alt="" width="120" height="80" border="0"></a></td>
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename4"];?>"><img src="_uploads/<?php echo $aRow["filename4"];?>" alt="" width="120" height="80" border="0"></a></td>
							
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename5"];?>"><img src="_uploads/<?php echo $aRow["filename5"];?>" alt="" width="120" height="80" border="0"></a></td>
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename6"];?>"><img src="_uploads/<?php echo $aRow["filename6"];?>" alt="" width="120" height="80" border="0"></a></td>
							
							
							
							
							<td align="left"><?php echo $aRow["status_valdat"];?></td>
							<td align="left"></td>
						</tr>
<?php

		}

?>


  