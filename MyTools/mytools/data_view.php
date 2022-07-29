<?php
  session_start();
  include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  $aSQL = "SELECT *  from t_datek_bgest where id = '$_GET[id]' ";
  $aQResult=mysqli_query($conn, $aSQL);
?>


<head>
	<title>Data Module</title>
	 <link rel="stylesheet" type="text/css" href="Style/style2.css"></link>
</head>

<?php

       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $witel = $aRow["witel"];
       $serviceid = $aRow["serviceid"];
	   
       $customer_name = $aRow["customer_name"];
       $customer_address = $aRow["customer_address"];
	   $installation_address = $aRow["installation_address"];

	   $lat = $aRow["lat"];
	   $lgt = $aRow["lgt"];
	   
	   $service_type = $aRow["service_type"];
       $connectivity_type = $aRow["connectivity_type"];
       $astinet_type = $aRow["astinet_type"];
	   
	   $nte_type = $aRow["nte_type"];
	   $nte_model = $aRow["nte_model"];
	   $nte_sn = $aRow["nte_sn"];
	   $nte_uplink_port = $aRow["nte_uplink_port"];
		   
		   
	   $stp_type = $aRow["stp_type"];
	   $stp_locn = $aRow["stp_locn"];
	   $stp_name = $aRow["stp_name"];
	   $stp_panel = $aRow["stp_panel"];
	   $stp_port = $aRow["stp_port"];
	   $stp_port_uim = $aRow["stp_port_uim"];




	   $ce_type = $aRow["ce_type"];
	   $catatan = $aRow["catatan"];	   

	   
	   $user_id = $aRow["user_id"];
	   $date_time = $aRow["date_time"];
	   $validating = $aRow["validating"];

       }

       mysqli_free_result($aQResult);

?>

<HTML>
<HEAD>
	<title>View Data Bgest</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>View Data BGES</h2>


<form action="data_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>01. Witel</td> <td>: <input type="Text" name="witel" size="30" maxlength="50" readonly="yes" value="<?php echo $witel;?>"></td></tr>
   <tr><td bgcolor="#FF8484">02. Serviceid</td> <td>: <input type="Text" name="serviceid" size="30" maxlength="50" readonly="yes" value="<?php echo $serviceid;?>"></td></tr>
  
   <tr><td>03. Customer_name</td> <td>: <input type="Text" name="customer_name" size="30" maxlength="50" readonly="yes" value="<?php echo $customer_name;?>"></td></tr>
   <tr><td>04. Customer_address	</td> <td>: <input type="Text" name="customer_address" size="50" maxlength="250" readonly="yes" value="<?php echo $customer_address;?>"></td></tr>
   <tr><td>05. Installation_address</td> <td>: <input type="Text" name="installation_address" size="50" maxlength="250" readonly="yes" value="<?php echo $installation_address;?>"></td></tr>
   
   <tr><td bgcolor="silver"><font color="black"><b>06. Lat</b></font></td> <td>: <input type="Text" name="lat" size="16" maxlength="16" readonly="yes" value="<?php echo $lat;?>"></td></tr>
   <tr><td bgcolor="silver"><font color="black"><b>07. Lgt</b></font> <td>: <input type="Text" name="lgt" size="16" maxlength="16" readonly="yes" value="<?php echo $lgt;?>"></td></tr>

   <tr><td><font color="black"><b>08. Service_type</b></font>	</td> <td>: <input type="Text" name="service_type" size="50" maxlength="50" readonly="yes" value="<?php echo $service_type;?>">contoh: MM_IPVPN</td></tr>   
   <tr><td><font color="black"><b>09. Connectivity_type</b></font>	</td> <td>: <input type="Text" name="connectivity_type" size="50" maxlength="50" readonly="yes" value="<?php echo $connectivity_type;?>">contoh: STP</td></tr>   
   <tr><td><font color="black"><b>10. Astinet_type</b></font>	</td> <td>: <input type="Text" name="astinet_type" size="50" maxlength="50" readonly="yes" value="<?php echo $astinet_type;?>">contoh: STANDARD</td></tr>   

   <tr><td bgcolor="lime">11. NTE_Type	</td> <td>: <input type="Text" name="nte_type" size="30" maxlength="50" readonly="yes" value="<?php echo $nte_type;?>">contoh: ONT</td></tr>   
   <tr><td bgcolor="lime">12. NTE_Model	</td> <td>: <input type="Text" name="nte_model" size="30" maxlength="50" readonly="yes" value="<?php echo $nte_model;?>">contoh: ZXHN_F609</td></tr>   
   <tr><td bgcolor="lime">13. NTE_SN	</td> <td>: <input type="Text" name="nte_sn" size="30" maxlength="50" readonly="yes" value="<?php echo $nte_sn;?>">contoh: ZTEGC852B95E</td></tr>
   <tr><td bgcolor="lime"><b>14. NTE_DOWNLINK_PORT	</b></td> <td>: <input type="Text" name="nte_uplink_port" size="30" maxlength="50" readonly="yes" value="<?php echo $nte_uplink_port;?>">contoh: 1</td></tr>
   
   <tr><td bgcolor="yellow"><font color="black"><b>15. Stp_type</b></font>	</td> <td>: <input type="Text" name="stp_type" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_type;?>">contoh: ODP</td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>16. Stp_Locn</b></font>	</td> <td>: <input type="Text" name="stp_locn" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_locn;?>">contoh: ODP-TPI-FAC/26</td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>17. Stp_Name</b></font>	</td> <td>: <input type="Text" name="stp_name" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_name;?>">contoh: ODP-TPI-FAC/26 FAC/D02/26.01</td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>18. Stp_Panel</b></font>	</td> <td>: <input type="Text" name="stp_panel" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_panel;?>">contoh: PANEL01</td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>19. Stp_port</b></font>	</td> <td>: <input type="Text" name="stp_port" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_port;?>">contoh: 2</td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>20. Stp_port_Uim</b></font>	</td> <td>: <input type="Text" name="stp_port" size="60" maxlength="90" readonly="yes" value="<?php echo $stp_port_uim;?> ">contoh: ODP-MDC-FAV/035 FAV/D03/035.01-PANEL02-1</td></tr>   
      
   
  
   
   <tr><td>21. CE_type	</td> <td>: <input type="Text" name="ce_type" size="30" maxlength="50" readonly="yes" value="<?php echo $ce_type;?>"></td></tr>
  
   <tr><td>22. Catatan	</td> <td>: <input type="Text" name="catattan" size="30" maxlength="50" readonly="yes" value="<?php echo $catatan;?>"></td></tr>


 
   <tr><td bgcolor="#00ffff">23. User_id	</td> <td>: <input type="Text" name="user_id" size="30" maxlength="50" readonly="yes" value="<?php echo $user_id;?>"></td></tr>
   <tr><td bgcolor="#00ffff">24. Date_time </td> <td>: <input type="Text" name="date_time" size="30" maxlength="50" readonly="yes" value="<?php echo $date_time;?>"></td></tr>
   <tr><td bgcolor="#00ffff">25. Validating </td> <td>: <input type="Text" name="validating" size="30" maxlength="50" readonly="yes" value="<?php echo $validating;?>"></td></tr>

 


</form>


</BODY>
</HTML>
