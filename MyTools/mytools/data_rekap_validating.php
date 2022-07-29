<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT witel, validating, count(validating) as jumlah from t_datek_bgest group by witel, validating order by witel, validating asc";
	$aQResult=mysqli_query($conn, $aSQL);
?>

<html>
<head>
	<title>Administrasi >> user</title>
	<link rel="stylesheet" type="text/css" href="Style/style2.css"></link>
</head>

<body bgcolor="#D8D8D8">
	<center>
		<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
			<tr>
				<td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">
					<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
						<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP COLLECTING</b></font>
						<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>DATA VALIDATING BGES</b></font>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="50"><b>WITEL</b></td>
							<td align="left" width="50"><b>VALIDATING_STATUS</b></td>
							<td align="left" width="50"><b>JUMLAH</b></td>
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
				<td align="center"><?php echo $no;?></td>
				<td align="left"><a href="data_selected_validating.php?witel=<?php echo $aRow["witel"];?> & validating=<?php echo $aRow["validating"];?>"><?php echo $aRow["witel"];?></a></td>
				<td align="left"><?php echo $aRow["validating"];?></td>
				<td align="right"><?php echo $aRow["jumlah"];?></td>
			</tr>
<?php
}

?>


  <tr bgcolor="#FFFF97">
    <td align="center"></td>
    <td><div align="left">TOTAL</div></td>
	<td><div align="left"></div></td>
	
	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
 </table></td></tr></table></center></body></html>