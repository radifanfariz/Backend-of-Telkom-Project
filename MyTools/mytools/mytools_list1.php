<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	$_SESSION['c_profile0']=0;
	//print "c_profile0=".$_SESSION['c_profile0']."<br>";

?>


<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from images order by timestamp desc, service_number desc";
	$aQResult=mysqli_query($conn, $aSQL);
?>





 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>
</head>

<body bgcolor="#D8D8D8">



<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>LIST COLLECTING DATA FROM MY-TOOLS</b></font>
<br><br>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="280%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">






<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">

		
		<td align="center" width="30"><b>NO</b></td>		
		<td align="center" width="30"><b>VIEW</b></td>		
					
		<td align="left" width="50"><b>UPDATE</b></td>
		<td align="left" width="50"><b>DELETE</b></td>
		
		<td align="left" width="150"><b>TIMESTAMP</b></td>
		<td align="left" width="80"><b>REGIONAL</b></td>
		<td align="left" width="80"><b>WITEL</b></td>
				
		<td align="left" width="80"><b>SERVICE_ORDER</b></td>
		<td align="left" width="80"><b>SERVICE_TYPE</b></td>
		<td align="left" width="80"><b>SERVICE_NUMBER</b></td>
				
		<td align="left" width="80"><b>CUST_NAME</b></td>
		<td align="left" width="80"><b>CUST_ADDR</b></td>
		<td align="left" width="80"><b>INST_ADDR</b></td>
				
		<td align="left" width="80"><b>LAT_INST_ADDR</b></td>
		<td align="left" width="80"><b>LONG_INST_ADDR</b></td>
				
		<td align="left" width="80"><b>STP_NAME</b></td>
		<td align="left" width="80"><b>STP_PANEL</b></td>
		<td align="left" width="80"><b>STP_PORT</b></td>
				
				
		<td align="left" width="80"><b>LAT_ODP</b></td>
		<td align="left" width="80"><b>LONG_ODP</b></td>
		
		<td align="left" width="80"><b>KENDALA_TEKNIS</b></td>
		<td align="left" width="80"><b>KENDALA_NONTEKNIS</b></td>
		
		<td align="left" width="80"><b>QR_CODE_PORT</b></td>
		<td align="left" width="80"><b>QR_CODE_DW</b></td>
		
		
		<td align="left" width="80"><b>KETERANGAN_KENDALA</b></td>
						
		<td align="center" width="70"><b>USER_ID</b></td>
		<td align="center" width="70"><b>IMEI</b></td>
		
		<td align="left" width="30"><b>FILENAME</b></td>
		<td align="left" width="90"><b>PICTURE_DESCRIPTION</b></td>
		<td align="left" width="50"><b>LATITUDE</b></td>
		<td align="left" width="50"><b>LONGITUDE</b></td>
		<td align="left" width="50"><b>LATITUDE_INST_ADDR</b></td>
		<td align="left" width="50"><b>LONGITUDE_INST_ADDR</b></td>
		

		<td align="CENTER" width="50"><b>IMAGE_VIEW</b></td>

		<td align="CENTER" width="50"><b>DIRECTION</b></td>	
		

	</tr>
	
<?php
       $no = 0;
	   while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	

?>
	
	
	<tr class="isi">
	
	<td align="center"><?php echo $no;?></td>			
	<td align="center"><a href="mytools_view.php?id=<?php echo $aRow["id"];?>"><img src="images/view1.jpg" alt="" width="24" height="24" border="0"></a></td>		
	<td align="center"><img src="images/edit.gif" alt="" width="12" height="12" border="0"></a></td>				
	<td align="center"><a href="data_mytools_delete.php?id=<?php echo $aRow["id"];?>"><img src="images/delete.gif" alt="" width="24" height="24" border="0"></a></td>	
		
		<td align="left"><?php print $aRow["timestamp"];?></td>
		<td align="left"><?php print $aRow["regional"];?></td>
		<td align="left"><?php print $aRow["witel"];?></td>
				
		<td align="left"><?php print $aRow["service_order"];?></td>
		<td align="left"><?php print $aRow["service_type"];?></td>
		<td align="left"><?php print $aRow["service_number"];?></td>
				
		<td align="left"><?php print $aRow["cust_name"];?></td>
		<td align="left"><?php print $aRow["cust_addr"];?></td>
		<td align="left"><?php print $aRow["inst_addr"];?></td>
				
		<td align="right"><?php print $aRow["latitude_inst_addr"];?></td>
		<td align="right"><?php print $aRow["longitude_inst_addr"];?></td>
		
		<td align="left">&nbsp;&nbsp;&nbsp;<?php print $aRow["stp_name"];?></td>
		<td align="left"><?php print $aRow["stp_panel"];?></td>
		<td align="center"><?php print $aRow["stp_port"];?></td>
		
		<td align="right"><?php print $aRow["latitude_odp"];?></td>
		<td align="right"><?php print $aRow["longitude_odp"];?></td>
		
		<td align="left"><?php print $aRow["kendala_teknis"];?></td>
		<td align="left"><?php print $aRow["kendala_nonteknis"];?></td>
		
		<td align="left"><?php print $aRow["barcode_port"];?></td>
		<td align="left"><?php print $aRow["barcode_dw"];?></td>
		
		
		<td align="left"><?php print $aRow["keterangan_kendala"];?></td>
		
				
		<td align="left"><?php print $aRow["user_id"];?></td>
		<td align="left"><?php print $aRow["imei"];?></td>
		
		<td align="left"><?php print $aRow["filename"];?></td>
		<td align="left"><?php print $aRow["name"];?></td>	
		
		
		<td align="left"><?php print $aRow["latitude_inst_addr"];?></td>	
		<td align="left"><?php print $aRow["longitude_inst_addr"];?></td>	
		
		

		<td align="center"><a href="<?php print $aRow["url"];?>">image_view</a></td>

		
		<td align="center"><a href="http://www.google.com/maps/dir//<?php print $aRow["latitude"];?>,<?php print $aRow["longitude"];?>/@<?php print $aRow["latitude"];?>,<?php print $aRow["longitude"];?>,17z" target="_blank">Cari Lokasi</a></td>
		

	
	
	
	
	</tr>
	

<?php
}
?>

</table>
</td></tr></table></center></body></html>
