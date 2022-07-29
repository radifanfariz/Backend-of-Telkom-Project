<?php

	//echo "pilih_tgl_awal = ". $_POST['pilih_tgl_awal']."<br>";
	//echo "pilih_tgl_akhir = ". $_POST['pilih_tgl_akhir']."<br>";
	
	$pilih_tgl_awal= $_POST['pilih_tgl_awal'];
	$pilih_tgl_akhir= $_POST['pilih_tgl_akhir'];
	//$pilih_witel= $_POST['pilih_witel'];
	
	
	//echo "pilih_tgl_awal = ". $pilih_tgl_awal;
	//echo "<br>";
	//echo "pilih_tgl_akhir = ". $pilih_tgl_akhir;
?>



<?php
	if($pilih_tgl_awal !='' and $pilih_tgl_akhir !='')
		{

?>



<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
	
	SELECT regional, witel, count(witel) as jumlah 
	from t_sales_force
	    WHERE (date(timestamp) BETWEEN '$pilih_tgl_awal' AND '$pilih_tgl_akhir' )
	group by regional, witel
	
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
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>REKAP DATA PER WITEL</b></font><br>
							<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>PERIODE TGL <?php echo $pilih_tgl_awal?> S/D <?php echo $pilih_tgl_akhir?></b></font><br>
							
							
							<br><br>
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
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
							<td align="left"><?php echo $aRow["witel"];?></td>						
							<td align="right"><a href="data_treg_selected.php?regional=<?php echo $aRow["regional"];?>"><?php print $aRow["jumlah"];?></a></td>
						
						</tr>
<?php

		}

?>


  <tr bgcolor="#FFFF97">
	<td align="center"></td>
	    <td><div align="left">TOTAL</div></td>

	

	<td align="right"><?php echo number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
</table></td></tr></table></center></body></html>

				
<?php
		}
	else
		{
		echo "<br>"."Silahkan pilih..."."<br>";
		}
?>

