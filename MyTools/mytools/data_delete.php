<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>



<head>
	<title>Data Module</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<?php
   include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL = "SELECT *  from t_datek_bgest where id = '$_GET[id]' ";
   $aQResult = mysql_query($aSQL);
?>


<?php

       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $id = $aRow["id"];
       
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
		   
	   $stp_locn = $aRow["stp_locn"];
	   $stp_name = $aRow["stp_name"];
	   $stp_panel = $aRow["stp_panel"];
	   $stp_port = $aRow["stp_port"];

	   $stp_port_uim = ($aRow["stp_locn"]." ".$aRow["stp_name"]."-".$aRow["stp_panel"]."-".$aRow["stp_port"]);


	   $ce_type = $aRow["ce_type"];
	   $catatan = $aRow["catatan"];	   

	   
	   $user_id = $aRow["user_id"];
	   $date_time = $aRow["date_time"];
	   $validating = $aRow["validating"];

       }

       mysql_free_result($aQResult);

?>


<?
	//print "c_profile=".$_GET[c_profile]."<br>";	
?>



<HTML>
<HEAD>
	<title>View Data Bgest</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>Delete Data BGES</h2>


<form action="data_delete_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>01. Witel</td> <td>: <input type="Text" name="witel" size="30" maxlength="50" readonly="yes" value="<?echo $witel?>"></td></tr>
   <tr><td bgcolor="#FF8484">02. Serviceid</td> <td>: <input type="Text" name="serviceid" size="30" maxlength="50" readonly="yes" value="<?echo $serviceid?>"></td></tr>
  
   <tr><td>03. Customer_name</td> <td>: <input type="Text" name="customer_name" size="30" maxlength="50" readonly="yes" value="<?echo $customer_name?>"></td></tr>
   <tr><td>04. Customer_address	</td> <td>: <input type="Text" name="customer_address" size="50" maxlength="250" readonly="yes" value="<?echo $customer_address?>"></td></tr>
   <tr><td>05. Installation_address</td> <td>: <input type="Text" name="installation_address" size="50" maxlength="250" readonly="yes" value="<?echo $installation_address?>"></td></tr>
   
   <tr><td bgcolor="silver"><font color="black"><b>06. Lat</b></font></td> <td>: <input type="Text" name="lat" size="16" maxlength="16" readonly="yes" value="<?echo $lat?>"></td></tr>
   <tr><td bgcolor="silver"><font color="black"><b>07. Lgt</b></font> <td>: <input type="Text" name="lgt" size="16" maxlength="16" readonly="yes" value="<?echo $lgt?>"></td></tr>

   <tr><td><font color="black"><b>08. Service_type</b></font>	</td> <td>: <input type="Text" name="service_type" size="50" maxlength="50" readonly="yes" value="<?echo $service_type?>"></td></tr>   
   <tr><td><font color="black"><b>09. Connectivity_type</b></font>	</td> <td>: <input type="Text" name="connectivity_type" size="50" maxlength="50" readonly="yes" value="<?echo $connectivity_type?>"></td></tr>   
   <tr><td><font color="black"><b>10. Astinet_type</b></font>	</td> <td>: <input type="Text" name="astinet_type" size="50" maxlength="50" readonly="yes" value="<?echo $astinet_type?>"></td></tr>   

   <tr><td bgcolor="lime">11. NTE_Type	</td> <td>: <input type="Text" name="nte_type" size="30" maxlength="50" readonly="yes" value="<?echo $nte_type?>"></td></tr>   
   <tr><td bgcolor="lime">12. NTE_Model	</td> <td>: <input type="Text" name="nte_model" size="30" maxlength="50" readonly="yes" value="<?echo $nte_model?>"></td></tr>   
   <tr><td bgcolor="lime">13. NTE_SN	</td> <td>: <input type="Text" name="nte_sn" size="30" maxlength="50" readonly="yes" value="<?echo $nte_sn?>"></td></tr>
   <tr><td bgcolor="lime">14. NTE_DOWNLINK_PORT	</td> <td>: <input type="Text" name="nte_uplinkport" size="30" maxlength="50" readonly="yes" value="<?echo $nte_sn?>"></td></tr>
   
   <tr><td bgcolor="yellow"><font color="black"><b>15. Stp_Type</b></font>	</td> <td>: <input type="Text" name="stp_type" size="60" maxlength="90" readonly="yes" value="<?echo $stp_type?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>16. Stp_Locn</b></font>	</td> <td>: <input type="Text" name="stp_locn" size="60" maxlength="90" readonly="yes" value="<?echo $stp_locn?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>17. Stp_Nmae</b></font>	</td> <td>: <input type="Text" name="stp_name" size="60" maxlength="90" readonly="yes" value="<?echo $stp_name?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>18. Stp_Panel</b></font>	</td> <td>: <input type="Text" name="stp_panel" size="60" maxlength="90" readonly="yes" value="<?echo $stp_panel?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>19. Stp_port</b></font>	</td> <td>: <input type="Text" name="stp_port" size="60" maxlength="90" readonly="yes" value="<?echo $stp_port?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>20. Stp_port (UIM)</b></font>	</td> <td>: <input type="Text" name="stp_port" size="60" maxlength="90" readonly="yes" value="<?echo $stp_port_uim?> "></td></tr>   
      
   
  
   
   <tr><td>21. CE_type	</td> <td>: <input type="Text" name="ce_type" size="30" maxlength="50" readonly="yes" value="<?echo $ce_type?>"></td></tr>
  
   <tr><td>22. Catatan	</td> <td>: <input type="Text" name="catattan" size="30" maxlength="50" readonly="yes" value="<?echo $catatan?>"></td></tr>


 
   <tr><td bgcolor="aqua">23. User_id	</td> <td>: <input type="Text" name="user_id" size="30" maxlength="50" readonly="yes" value="<?echo $user_id?>"></td></tr>
   <tr><td bgcolor="aqua">24. Date_time </td> <td>: <input type="Text" name="date_time" size="30" maxlength="50" readonly="yes" value="<?echo $date_time?>"></td></tr>
   <tr><td>25. Validating </td> <td>: <input type="Text" name="validating" size="30" maxlength="50" readonly="yes" value="<?echo $validating?>"></td></tr>




   
   <tr>
 			<td colspan="0" bgcolor="red"><font color="white">Are You Sure?</td></font>
			<td bgcolor="RED">
			<input type="radio" name="confirm" value="yes" ><font color="white">Yes</font>
    		<input type="radio" name="confirm" value="no" checked><font color="white">No</font>
  			</td>
	</tr>
	
	<tr>
	
	
   <td>
   <input type="Hidden" name="id" value="<?echo $id?>">

   <input type="Submit" value="Delete">

   </td>
			
	</tr>		
   
   </table>
   
   
   
</form>


</BODY>
</HTML>
