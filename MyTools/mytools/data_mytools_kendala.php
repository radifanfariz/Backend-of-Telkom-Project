<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "	

select regional, witel, kendala_teknis, count(kendala_teknis) as jumlah_kendala_teknis, kendala_nonteknis, count(kendala_nonteknis) as jumlah_kendala_nonteknis
from images
group by regional, witel, kendala_teknis, kendala_nonteknis

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
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP KENDALA TEKNIS DAN KENDALA CUSTOMER</b><BR></font>
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>SAAT PROSES PROVISIONING / PSB</b></font>
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="80"><b>KENDALA_TEKNIS</b></td>
							<td align="right" width="80"><b>JUMLAH</b></td>
							<td align="left" width="80"><b>KENDALA_CUSTOMER</b></td>
							<td align="right" width="80"><b>JUMLAH</b></td>
							
							
							
						</tr>
						
<?php
		$no = 0;
		$jumlah_kendala_teknis = 0;
		$jumlah_kendala_nonteknis = 0;
		$total_jumlah_kendala_teknis = 0;
		$total_jumlah_kendala_nonteknis = 0;
		
		
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
		   $no++;	
		   $total_jumlah_kendala_teknis+=$aRow["jumlah_kendala_teknis"];
		   $total_jumlah_kendala_nonteknis+=$aRow["jumlah_kendala_nonteknis"];
		   
?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["regional"];?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>
							<td align="right"><?php echo $aRow["kendala_teknis"];?></td>
							<td align="right"><?php echo $aRow["jumlah_kendala_teknis"];?></td>
							<td align="right"><?php echo $aRow["kendala_nonteknis"];?></td>
							<td align="right"><?php echo $aRow["jumlah_kendala_nonteknis"];?></td>
							
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
  <td align="center"></td>
   <td><div align="left">TOTAL</div></td>
	<td align="center"></td>
	<td align="center"></td>
	<td align="right"><?php echo number_format (($total_jumlah_kendala_teknis),0,'.',",");?></td>
	<td align="center"></td>
	<td align="right"><?php echo number_format (($total_jumlah_kendala_nonteknis),0,'.',",");?></td>
  </tr>
  
  				</table></td></tr></table></center></body></html>
