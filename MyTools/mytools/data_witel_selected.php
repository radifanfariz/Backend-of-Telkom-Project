<?php
echo "regional="."$_GET[regional]"."<br>";
echo "witel="."$_GET[witel]"."<br>";

?>



<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from images where regional='$_GET[regional]' and witel='$_GET[witel]'";
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
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">


<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>AsDaProv Selected</b></font>
<br><br>




<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="left" width="150"><b>TIMESTAMP</b></td>
		<td align="left" width="80"><b>REGIONAL</b></td>
		<td align="left" width="80"><b>WITEL</b></td>
				
		<td align="left" width="80"><b>SERVICE_ORDER</b></td>
		<td align="left" width="80"><b>SERVICE_TYPE</b></td>
		<td align="left" width="80"><b>SERVICE_NUMBER</b></td>
				
		
		<td align="left" width="80"><b>KENDALA_TEKNIS</b></td>
		<td align="left" width="80"><b>KETERANGAN_KENDALA</b></td>
						


		

		<td align="CENTER" width="50"><b>IMAGE_VIEW</b></td>
		<td align="CENTER" width="50"><b>MAPS_LACATION</b></td>
		<td align="CENTER" width="50"><b>DIRECTION</b></td>	
		

	</tr>
	
<?php
       $no = 0;
	   while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	

?>
	
	
	<tr class="isi">
		<td align="center"><?php print $no;?></td>
		<td align="left"><?php print $aRow["timestamp"];?></td>
		<td align="left"><?php print $aRow["regional"];?></td>
		<td align="left"><?php print $aRow["witel"];?></td>
				
		<td align="left"><?php print $aRow["service_order"];?></td>
		<td align="left"><?php print $aRow["service_type"];?></td>
		<td align="left"><?php print $aRow["service_number"];?></td>
				

		
		<td align="left"><?php print $aRow["kendala_teknis"];?></td>
		<td align="left"><?php print $aRow["keterangan_kendala"];?></td>
		
				


		<td align="center"><a href="<?php print $aRow["url"];?>">image_view</a></td>
		<td align="center"><a href="maps.php?latitude=<?php print $aRow["latitude"];?>&longitude=<?php print $aRow["longitude"];?>">maps</a></td>
		<td align="center"><a href="http://www.google.com/maps/dir//<?php print $aRow["latitude"];?>,<?php print $aRow["longitude"];?>/@<?php print $aRow["latitude"];?>,<?php print $aRow["longitude"];?>,17z" target="_blank">Cari Lokasi</a></td>
		

	
	
	
	
	</tr>
	

<?php
}
?>

</table>
</td></tr></table></center></body></html>
