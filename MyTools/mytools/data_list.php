<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL ="SELECT a.*, b.area_code FROM
(SELECT * FROM t_datek_bgest WHERE witel = '".$_SESSION['witel']."') a 
LEFT JOIN 
(SELECT * FROM p_serviceid_areacode WHERE witel = '".$_SESSION['witel']."') b 
ON a.serviceid = b.service_id 
ORDER BY date_time desc;";
 //   	$aSQL = "SELECT a.*, b.area_code
	// from t_datek_bgest a
	// LEFT JOIN p_serviceid_areacode b
	// ON a.serviceid=b.service_id
	// order by witel, validating, date_time asc limit 10
	// ";
	
	
	$aQResult=mysqli_query($conn, $aSQL);
?>


 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET></LINK>
</head>

<body bgcolor="#D8D8D8">
<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>COLLECTING DATA BGES FROM LAPANGAN</b></font>
<br><br>
<center>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="330%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">

<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>

	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="left" width="50"><b>VIEW</b></td>
		<td align="left" width="50"><b>UPDATE</b></td>
		
		<td align="left" width="50"><b>WITEL</b></td>
		<td align="left" width="50"><b>VALIDATING</b></td>
		

		<td align="left" width="50" bgcolor="#00ffff"><b>AREA_CODE_TENOSS</b></td>
		
		<td align="left" width="70"><b>SERVICEID</b></td>
		

		
		<td align="left" width="60"><b>CUSTOMER_NAME</b></td>
		<td align="left" width="200"><b>CUSTOMER_ADDRESS</b></td>
		<td align="left" width="300"><b>INSTALLATION_ADDRESS</b></td>
		<td align="left" width="80"><b>LATITUDE</b></td>
		<td align="left" width="80"><b>LONGITUDE</b></td>
		

		
		<td align="left" width="50"><b>SERVICE_TYPE</b></td>
		<td align="left" width="50"><b>CONNECTIVITY_TYPE</b></td>
		<td align="left" width="50"><b>ASTINET_TYPE</b></td>
		
		<td align="left" width="50" bgcolor="#00ffff"><b>NTE_TYPE</b></td>
		<td align="left" width="50" bgcolor="#00ffff"><b>NTE_MODEL</b></td>
		<td align="left" width="150" bgcolor="#00ffff"><b>NTE_SN</b></td>
		<td align="left" width="50" bgcolor="#00ffff"><b>NTE_UPLINK/PORT (ETH1/ETH2/ETH3/POT)</b></td>
		
		<td align="left" width="50" bgcolor="#ffff00"><b>STP_TYPE (ODP/DP)</b></td>
		<td align="left" width="200" bgcolor="#ffff00"><b>STP_LOCN</b></td>
		<td align="left" width="200" bgcolor="#ffff00"><b>STP_NAME</b></td>
		<td align="left" width="50" bgcolor="#ffff00"><b>STP_PANEL</b></td>
		<td align="left" width="50" bgcolor="#ffff00"><b>STP_PORT</b></td>
		<td align="left" width="200" bgcolor="#ffff00"><b>STP_PORT_UIM (UPDATE MANUAL)</b></td>
		

		
		<td align="left" width="200"><b>CE_TYPE</b></td>
		<td align="left" width="200"><b>CATATAN</b></td>
		

		
		<td align="left" width="80"><b>USER_ID</b></td>
		<td align="left" width="120"><b>DATE_TIME</b></td>

	</tr>
	
<?php
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $no++;	
?>
	
	
	<tr class="isi">
		<td align="center"><?=$no;?></td>
		<td align="center"><font color="blue"><a href="data_view.php?id=<?php echo $aRow["id"];?>">View</a></font></td>
		<td align="center"><font color="blue"><a href="data_update.php?id=<?php echo $aRow["id"];?>">Update</a></font></td>
		
		
		<td align="left"><?php echo $aRow["witel"];?></td>
		
		

		<td align="left" bgcolor="yellow"><?php echo $aRow["validating"];?></td>
		

		
		<td align="left" bgcolor="#00ffff"><?php echo $aRow["area_code"];?></td>
		<td align="left"><?php echo $aRow["serviceid"];?></td>	
		<td align="left"><?php echo $aRow["customer_name"];?></td>
		<td align="left"><?php echo $aRow["customer_address"];?></td>
		<td align="left"><?php echo $aRow["installation_address"];?></td>
		<td align="left"><?php echo $aRow["lat"];?></td>
		<td align="left"><?php echo $aRow["lgt"];?></td>		
		<td align="left"><?php echo $aRow["service_type"];?></td>
		<td align="left"><?php echo $aRow["connectivity_type"];?></td>
		<td align="left"><?php echo $aRow["astinet_type"];?></td>
		<td align="left"><?php echo $aRow["nte_type"];?></td>		
		<td align="left"><?php echo $aRow["nte_model"];?></td>		
		<td align="left"><?php echo $aRow["nte_sn"];?></td>
		<td align="left"><?php echo $aRow["nte_uplink_port"];?></td>
		<td align="left"><?php echo $aRow["stp_type"];?></td>	
		<td align="left"><?php echo $aRow["stp_locn"];?></td>	
		<td align="left"><?php echo $aRow["stp_name"];?></td>	
		<td align="left"><?php echo $aRow["stp_panel"];?></td>	
		<td align="left"><?php echo $aRow["stp_port"];?></td>	
		<td align="left"><?php echo $aRow["stp_port_uim"];?></td>	
		
		<td align="left"><?php echo $aRow["ce_type"];?></td>
		<td align="left"><?php echo $aRow["catatan"];?></td>
		<td align="left"><?php echo $aRow["user_id"];?></td>
		<td align="left"><?php echo $aRow["date_time"];?></td>
	</tr>
	

<?php
}
?>
</table></td></tr></table></center></body></html>
