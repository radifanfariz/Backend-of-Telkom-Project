<?php


  print "witel=".$_GET[witel]."<br>";	

  
?>


<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from t_datek_bgest where witel='$_GET[witel]'";
	$aQResult=mysql_query($aSQL);
?>


 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#D8D8D8">
<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>DATA BGES LIST</b></font>
<br><br>


<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="210%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">




<br>
<br>
<br>




<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>

	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="center" width="30"><b>View</b></td>
		<td align="center" width="30"><b>Update</b></td>
		<td align="left" width="70"><b>SERVICEID</b></td>
		<td align="left" width="60"><b>CUSTOMER_NAME</b></td>
		<td align="left" width="200"><b>CUSTOMER_ADDRESS</b></td>
		<td align="left" width="300"><b>INSTALLATION_ADDRESS</b></td>
		
		
		<td align="left" width="80"><b>LATITUDE</b></td>
		<td align="left" width="80"><b>LONGITUDE</b></td>
		
		<td align="left" width="50"><b>WITEL</b></td>
		<td align="left" width="50"><b>STO</b></td>
		<td align="left" width="250"><b>STP_PORT</b></td>
		
		<td align="left" width="50"><b>SERVICE_TYPE</b></td>
		
		<td align="left" width="50"><b>NTE_TYPE</b></td>
		<td align="left" width="50"><b>NTE_MODEL</b></td>
		<td align="left" width="150"><b>NTE_SN</b></td>
		
		<td align="left" width="50"><b>CE_TYPE</b></td>
		<td align="left" width="50"><b>CE_MODEL</b></td>
		<td align="left" width="150"><b>CE_SN</b></td>
		
		<td align="left" width="80"><b>USER_ID</b></td>
		<td align="left" width="120"><b>DATE_TIME</b></td>
		<td align="left" width="200"><b>CATATAN</b></td>
		<td align="left" width="50"><b>VALIDATING</b></td>
	</tr>
	
<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	
?>
	
	
	<tr class="isi">
		<td align="center"><?=$no;?></td>
		<td align="center"><font color="blue"><a href="data_view.php?id=<?print $aRow["id"];?>">View</a></font></td>
		<td align="center"><font color="#800000"><a href="data_update.php?id=<?print $aRow["id"];?>">Update</a></font></td>
		<td align="left"><?print $aRow["serviceid"];?></td>
		
		<td align="left"><?print $aRow["customer_name"];?></td>
		<td align="left"><?print $aRow["customer_address"];?></td>
		<td align="left"><?print $aRow["installation_address"];?></td>
		
		
		<td align="left"><?print $aRow["lat"];?></td>
		<td align="left"><?print $aRow["lgt"];?></td>		
		
		<td align="left"><?print $aRow["witel"];?></td>
		<td align="left"><?print $aRow["sto"];?></td>		
		<td align="left"><?print $aRow["stp_port"];?></td>		
		
		<td align="left"><?print $aRow["service_type"];?></td>
				
		<td align="left"><?print $aRow["nte_type"];?></td>
		<td align="left"><?print $aRow["nte_model"];?></td>		
		<td align="left"><?print $aRow["nte_sn"];?></td>
		
		<td align="left"><?print $aRow["ce_type"];?></td>
		<td align="left"><?print $aRow["ce_model"];?></td>		
		<td align="left"><?print $aRow["ce_sn"];?></td>
		
		
		<td align="left"><?print $aRow["user_id"];?></td>
		<td align="left"><?print $aRow["date_time"];?></td>
		<td align="left"><?print $aRow["catatan"];?></td>
		<td align="left"><?print $aRow["validating"];?></td>

	</tr>
	

<?}?>

</table>

</body>
</html>

