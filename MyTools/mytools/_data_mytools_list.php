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
<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>LIST DATA SALES-FORCE WITEL <?php echo $pilih_witel?></b></font><br>
<font color="brown" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $pilih_tgl_awal?> S/D <?php echo $pilih_tgl_akhir?></b></font><br>

<br><br>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">






<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="120"><b>TANGGAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="left" width="80"><b>SALES_ID</b></td>
							<td align="left" width="120"><b>NAMA_CALANG</b></td>
							<td align="left" width="120"><b>INSTALATION_ADDRESS</b></td>
							<td align="left" width="120"><b>GOOGLE_ADDRESS</b></td>
							<td align="left" width="120"><b>LAT INST_ADDR</b></td>
							<td align="left" width="120"><b>LNG INST_ADDR</b></td>
							<td align="left" width="120"><b>NOMOR_HP</b></td>
							<td align="left" width="120"><b>PACKET_INDIHOME</b></td>
							<td align="left" width="80"><b>STATUS_CALANG</b></td>
						</tr>
	
<?php
       $no = 0;
	   while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	

?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["timestamp"];?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>
							<td align="left"><?php echo $aRow["sales_id"];?></td>							
							<td align="left"><?php echo $aRow["cust_name"];?></td>
							<td align="left"><?php echo $aRow["inst_addr"];?></td>
							<td align="left"><?php echo $aRow["google_addr"];?></td>
							<td align="left"><?php echo $aRow["latitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["longitude_inst_addr"];?></td>
							<td align="left"><?php echo $aRow["hp"];?></td>
							<td align="left"><?php echo $aRow["packet_indihome"];?></td>
							<td align="left"><?php echo $aRow["status_calang"];?></td>
							<td align="left"></td>
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
