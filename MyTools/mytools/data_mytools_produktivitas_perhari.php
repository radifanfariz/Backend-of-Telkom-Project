<?php
	$aRow["tanggal_awal"]='';
	$aRow["tanggal_akhir"]='';
	
	include "connection/connection.php";
	$aSQL1 = "
	SELECT min(DATE(TIMESTAMP)) AS tanggal_awal FROM images
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

	include "connection/connection.php";
	$aSQL2 = "
    SELECT max(DATE(TIMESTAMP)) AS tanggal_akhir FROM images
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
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "	
SELECT date(timestamp) as tanggal, regional, witel, count(witel) as jumlah
from images
group by tanggal, regional, witel
order by regional, witel, tanggal asc, jumlah desc, user_id asc
	";
	$aQResult=mysqli_query($conn, $aSQL);
?>


 
 
<html>
	<head>
		<title>Administrasi >> user</title>
		<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>	
	</head>

	<body bgcolor="#D8D8D8">
		<center>
			<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
				<tr>
					<td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">
						<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>REKAP PRUDUKTIVITAS PER HARI</b><BR></font>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $tanggal_awal?> S/D <?php echo $tanggal_akhir?></b></font><br>
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>TANGGAL</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="right" width="80"><b>JUMLAH</b></td>
						</tr>
						
<?php
		$no = 0;
		$total_jumlah = 0;
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
		   $no++;	
		   $total_jumlah+=$aRow["jumlah"];
?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["tanggal"];?></td>
							<td align="left"><?php echo $aRow["regional"];?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>
							<td align="right"><?php echo $aRow["jumlah"];?></td>
						
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
   <td><div align="left">TOTAL</div></td>
	<td align="center"></td>
	<td align="center"></td>
	<td align="center"></td>
	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
  				</table></td></tr></table></center></body></html>
