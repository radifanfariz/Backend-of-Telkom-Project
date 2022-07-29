
  
	   
<?php
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL1 = "select * from t_psbpots";
   $aQResult1=mysql_query($aSQL1);
?>





<html>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">

<center>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="red">



<br>





	<tr class="head">
		<td align="center" width="30"><b><font color="blue">No</b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_mdf.php">MDF</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_ndem.php">NDEM</font></a></b></td>
		<td align="center" width="50"><b><font color="red"><a href="data_psbpots_list_wo_instalasi.php">WO_INSTALASI</font></a></b></td>
		<td align="center" width="50"><b><font color="green"><a href="data_psbpots_list_wo_jarlok.php">WO_JARLOK</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_wo_mdf.php">WO_MDF</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_wo_central.php">WO_CENTRAL</font></a></b></td>
		<td align="center" width="50"><b><font color="brown"><a href="data_psbpots_list_rwo_instalasi.php">RWO_INSTALASI</font></a></b></td>
		<td align="center" width="50"><b><font color="green"><a href="data_psbpots_list_rwo_jarlok.php">RWO_JARLOK</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_rwo_mdf.php">RWO_MDF</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_rwo_central.php">RWO_CENTRAL</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_nama.php">NAMA</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_alamat.php">ALAMAT</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_kcontact.php">KCONTACT</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_cgest.php">CGEST</font></a></b></td>
		<td align="center" width="50"><b><font color="blue"><a href="data_psbpots_list_nomor_tumpangan.php">NOMOR_TUMPANGAN</font></a></b></td>
		
		
	</tr>
	
<?php
	     while ($aRow1 = mysql_fetch_array($aQResult1))
       {
?>
	
	

	<tr class="isi">
		<td align="center"><?=$aRow1["rownum"];?></td>
		<td align="left"><?=$aRow1["mdf"];?></td>
		<td align="left"><?=$aRow1["ndem"];?></td>
		<td align="left"><?=$aRow1["wo_instalasi"];?></td>
		<td align="left"><?=$aRow1["wo_jarlok"];?></td>
		<td align="left"><?=$aRow1["wo_mdf"];?></td>
		<td align="left"><?=$aRow1["wo_central"];?></td>
		<td align="left"><?=$aRow1["rwo_instalasi"];?></td>
		<td align="left"><?=$aRow1["rwo_jarlok"];?></td>
		<td align="left"><?=$aRow1["rwo_mdf"];?></td>
		<td align="left"><?=$aRow1["rwo_central"];?></td>
		<td align="left"><?=$aRow1["nama"];?></td>
		<td align="left"><?=$aRow1["alamat"];?></td>
		<td align="left"><?=$aRow1["kcontact"];?></td>
		<td align="left"><?=$aRow1["cgest"];?></td>
		<td align="left"><?=$aRow1["nomor_tumpangan"];?></td>
	</tr>
	


	<?}?>

</table>



</body>
</html>

