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
	
SELECT t_user_mobile.nama AS nama_tech, t_sales_force.*
FROM t_sales_force
LEFT JOIN t_user_mobile
ON t_sales_force.user_id2=t_user_mobile.userid
	
	";
	$aQResult=mysqli_query($conn, $aSQL);
?>


 
 
<html>
	<head>
		<title>Administrasi >> user</title>
		<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>	
	</head>

	<body bgcolor="#D8D8D8">
		
			<table border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
				<tr>
					<td bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">
						<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
							<font color="witel" size="2" face="Verdana, Arial, Helvetica"><b>DATA SALES_FORCE</b></font><br>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $tanggal_awal?> S/D <?php echo $tanggal_akhir?></b></font><br>
							<br><br>
							
							
							
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="120"><b>TANGGAL_REG</b></td>
							<td align="left" width="80" bgcolor="#ffff00"><b>STATUS PROV</b></td>

							<td align="left" width="120" bgcolor="#AEFFD7"><b>CUST_NAME</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>CUST_INST_ADDR</b></td>	
							<td align="left" width="80" bgcolor="#AEFFD7"><b>CUST_HP</b></td>
							<td align="left" width="80" bgcolor="#AEFFD7"><b>GOOGLE_INST_ADDR</b></td>	
												
							<td align="left" width="120" bgcolor="#FF91C8"><b>LAT_INST_ADDR</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LNG_INST_ADDR</b></td>	

							<td align="left" width="120"><b>PACKET</b></td>
							<td align="left" width="120"><b>PHOTO_RUMAH</b></td>
							<td align="left" width="120"><b>PHOTO_IDENTITAS</b></td>

							<td align="left" width="120" bgcolor="#ffff00"><b>USERID_SF</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>USERID_TECH</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>NAMA_TECH</b></td>
						
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
							<td align="left"><?php echo $aRow["hp"];?></td>
							<td align="left"><?php echo $aRow["google_addr"];?></td>
							<td align="left"><?php echo $aRow["latitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["longitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["packet_indihome"];?></td>
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename"];?>"><img src="_uploads/<?php echo $aRow["filename"];?>" alt="" width="120" height="80" border="0"></a></td>
							<td align="left"><a href= "_uploads/<?php echo $aRow["filename2"];?>"><img src="_uploads/<?php echo $aRow["filename2"];?>" alt="" width="120" height="80" border="0"></a></td>
							<td align="left"><?php echo "0".$aRow["user_id"];?></td>	
							<td align="left"><?php echo "0".$aRow["user_id2"];?></td>	
							<td align="left"><?php echo $aRow["nama_tech"];?></td>	
						</tr>
<?php

		}

?>


  