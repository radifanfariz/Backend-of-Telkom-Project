<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT regional, witel, count(witel) as jumlah from images group by regional, witel";
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
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP COLLECTING </b></font>
							<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>DATA MY-TOOLS PER WITEL</b></font>
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="80"><b>JUMLAH</b></td>
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
							<td align="left"><?php print $aRow["regional"];?></td>
							<td align="left"><?php print $aRow["witel"];?></td>
							<td align="right"><a href="data_witel_selected.php?regional=<?php echo $aRow["regional"];?>&witel=<?php echo $aRow["witel"];?>"><?php print $aRow["jumlah"];?></a></td>
						
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
    <td align="center"></td>
    <td><div align="left">TOTAL</div></td>
	<td align="center"></td>
	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
  				</table></td></tr></table></center></body></html>
