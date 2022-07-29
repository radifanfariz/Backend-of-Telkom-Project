<?php

	//echo "pilih_tgl_awal = ". $_POST['pilih_tgl_awal']."<br>";
	//echo "pilih_tgl_akhir = ". $_POST['pilih_tgl_akhir']."<br>";
	
	$pilih_tgl_awal= $_POST['pilih_tgl_awal'];
	$pilih_tgl_akhir= $_POST['pilih_tgl_akhir'];
	$pilih_witel= $_POST['pilih_witel'];
	/*
    echo "pilih_tgl_awal = ". $pilih_tgl_awal;
	echo "<br>";
	echo "pilih_tgl_akhir = ". $pilih_tgl_akhir;
	echo "<br>";
	echo "pilih_witel = ". $pilih_witel;
	*/
?>



<?php
	if($pilih_tgl_awal !='' and $pilih_tgl_akhir !='' and $pilih_witel !='')
		{

?>



<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	//$_SESSION['c_profile0']=0;
	//print "c_profile0=".$_SESSION['c_profile0']."<br>";

?>



<?php
	//$witel='';
	
	include "connection/_connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
	SELECT * from t_sales_force
    WHERE (date(timestamp) BETWEEN '$pilih_tgl_awal' AND '$pilih_tgl_akhir' ) and (witel='$pilih_witel')
	order by timestamp asc
	";
	$aQResult=mysqli_query($conn, $aSQL);
?>



 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>
</head>

<body bgcolor="#D8D8D8">



<br>
<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>LIST DATA WITEL <?php echo $pilih_witel?></b></font><br>
<font color="brown" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $pilih_tgl_awal?> S/D <?php echo $pilih_tgl_akhir?></b></font><br>

<br><br>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="200%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">






<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="60"><b>WITEL</b></td>
							<td align="left" width="80"><b>TIMESTAMP</b></td>
							<td align="left" width="80" bgcolor="#00ffff"><b>STATUS PROVISIONING</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>CUST_NAME</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>INST_ADDR</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LAT INST_ADDR</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LNG INST_ADDR</b></td>	
							<td align="left" width="120" bgcolor="#ffff00"><b>NO MYIR_SC</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>INTERNET_NUMBER</b></td>
							<td align="left" width="120" bgcolor="#ffff00"><b>PHONE_NUMBER</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>STP_NAME</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>STP_PANEL</b></td>
							<td align="left" width="120" bgcolor="#AEFFD7"><b>STP_PORT</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LATITUDE_ODP</b></td>
							<td align="left" width="120" bgcolor="#FF91C8"><b>LONGITUDE_ODP</b></td>	
							<td align="left" width="120"><b>POWER_RX</b></td>
							<td align="left" width="120"><b>BARCODE_RESULT</b></td>
							<td align="left" width="120"><b>BARCODE_DW</b></td>
							<td align="left" width="120"><b>BARCODE_PORT</b></td>
							<td align="left" width="120"><b>KENDALA_TEKNIS</b></td>
							<td align="left" width="120"><b>KENDALA_CUSTOMER</b></td>
							<td align="left" width="120"><b>KENDALA_DESCRIPTION</b></td>
							<td align="left" width="120"><b>USERID_TECH</b></td>
							<td align="left" width="120"><b>USERID_SF</b></td>
							<td align="left" width="120"><b>NAMA_SF</b></td>
						</tr>
	
<?php
       $no = 0;
	   while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	

?>
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>	
							<td align="left"><?php echo $aRow["timestamp"];?></td>
							<td align="left"><?php echo $aRow["status_valdat"];?></td>
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







</table>
</td></tr></table></center></body></html>


<?php
		}
	else
		{
		echo "<br>"."Silahkan pilih..."."<br>";
		}
?>
