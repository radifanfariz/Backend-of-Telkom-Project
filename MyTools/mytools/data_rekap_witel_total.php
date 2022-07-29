<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
SELECT a.regional, a.witel, kendala_teknis, jumlah_kendala_teknis, kendala_nonteknis, jumlah_kendala_nonteknis
from
(SELECT regional, witel, kendala_teknis, count(kendala_teknis) as jumlah_kendala_teknis
from images 
group by regional, witel, kendala_teknis) as a
LEFT JOIN
(SELECT regional, witel, kendala_nonteknis, count(kendala_nonteknis) as jumlah_kendala_nonteknis
from images 
group by regional, witel, kendala_nonteknis) as b
ON a.witel = b.witel;
";
	$aQResult=mysqli_query($conn, $aSQL)
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
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP COLLECTING </b></font>
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>MY-TOOLS WITEL</b></font>
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="80"><b>KENDALA_TEKNIS</b></td>
							<td align="right" width="40"><b>JUMLAH</b></td>
							
							<td align="right" width="80"><b>&nbsp;KENDALA_NONTEKNIS</b></td>
							<td align="right" width="40"><b>JUMLAH</b></td>

						</tr>
						
<?php
		$no = 0;
		$total_jumlah = 0;
		$total_jumlah_nonteknis = 0;
		
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
		   $no++;	
		   $total_jumlah+=$aRow["jumlah_kendala_teknis"];
		   $total_jumlah_nonteknis+=$aRow["jumlah_kendala_nonteknis"];
		   
?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php print $aRow["regional"];?></td>
							<td align="left"><?php print $aRow["witel"];?></td>
							<td align="right"><?php print $aRow["kendala_teknis"];?></td>
							<td align="right"><?php print $aRow["jumlah_kendala_teknis"];?></td>
							<td align="right"><?php print $aRow["kendala_nonteknis"];?></td>
							<td align="right"><?php print $aRow["jumlah_kendala_nonteknis"];?></td>
							
							
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
    <td align="center"></td>
    <td><div align="left">TOTAL</div></td>
	<td align="center"></td>
	<td align="center"></td>
	
	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
	<td align="center"></td>
	<td align="right"><?php echo number_format (($total_jumlah_nonteknis),0,'.',",");?></td>	
		
  </tr>
  
  </table></td></tr></table></center></body></html>
