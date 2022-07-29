<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "	
SELECT date(timestamp) as tanggal, regional, witel, user_id, service_number, cust_name, inst_addr, count(service_number) as jumlah
from images
group by date(timestamp), regional, witel, user_id, cust_name, inst_addr, service_number
order by date(timestamp) desc, user_id asc

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
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP COLLECTING DATA MYTOOLS</b><BR></font>
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>PER USERID</b></font>
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="80"><b><a href="data_mytools_rekap_teknisi_userid.php" title="Sort by Userid">USERID</a></b></td>
							<td align="left" width="80"><b>SERVICE_NUMBER</b></td>
							
							<td align="left" width="80"><b>CUST_NAME</b></td>
							<td align="left" width="80"><b>INST_ADDR</b></td>
							<td align="left" width="80"><b><a href="data_mytools_rekap_teknisi_tanggal.php" title="Sort by Tanggal">TANGGAL</a></b></td>
							
							
							<td align="left" width="80"><b>CHECK_DOEBLE</b></td>
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
							<td align="left"><?php echo $aRow["regional"];?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>
							<td align="left"><?php echo $aRow["user_id"];?></td>
							<td align="left"><?php echo $aRow["service_number"];?></td>
							
							<td align="left"><?php echo $aRow["cust_name"];?></td>
							<td align="left"><?php echo $aRow["inst_addr"];?></td>
							<td align="left"><?php echo $aRow["tanggal"];?></td>

							
							
							
							<td align="right"><a href="data_treg_selected.php?regional=<?php echo $aRow["regional"];?>"><?php print $aRow["jumlah"];?></a></td>
						
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
   <td><div align="left">TOTAL</div></td>
	<td align="center"></td>
	<td align="center"></td>
	
	<td align="center"></td>
	<td align="center"></td>
	

	<td align="center"></td>
	<td align="center"></td>
	<td align="center"></td>
	
	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
  				</table></td></tr></table></center></body></html>
