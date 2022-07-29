<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL_ = "SELECT * from b_validating";
	$aQResult_=mysqli_query($conn, $aSQL_);
?>


<head>
	<title>Data Module</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<?php
     // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$id = $_GET['id'];
	echo $id;
   $aSQL = "SELECT *  from t_datek_bgest where id = $_GET[id]";
   $aQResult = mysqli_query($conn, $aSQL);
?>



<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx SERVICE_TYPE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->


<?php
	
   	$aSQL1 = "SELECT * from b_witel";
	$aQResult1=mysqli_query($conn, $aSQL1);
?>



<?php
	
   	$aSQL2 = "SELECT * from b_service_type";
	$aQResult2=mysqli_query($conn, $aSQL2);
?>


<?php
	
   	$aSQL3 = "SELECT * from b_connectivity_type";
	$aQResult3=mysqli_query($conn, $aSQL3);
?>


<?php
	
   	$aSQL4 = "SELECT * from b_astinet_type";
	$aQResult4=mysqli_query($conn, $aSQL4);
?>


<?php
	
   	$aSQL5 = "SELECT * from b_nte_type";
	$aQResult5=mysqli_query($conn, $aSQL5);
?>



<?php
	
   	$aSQL6 = "SELECT * from b_nte_model";
	$aQResult6=mysqli_query($conn, $aSQL6);
?>

<?php
	
   	$aSQL6b = "SELECT * from b_nte_uplink_port";
	$aQResult6b=mysqli_query($conn, $aSQL6b);
?>


<?php
	
   	$aSQL7a = "SELECT * from b_stp_type";
	$aQResult7a=mysqli_query($conn, $aSQL7a);
?>

<?php
	
   	$aSQL7 = "SELECT * from b_stp_panel";
	$aQResult7=mysqli_query($conn, $aSQL7);
?>



<?php
	
   	$aSQL8 = "SELECT * from b_stp_port";
	$aQResult8=mysqli_query($conn, $aSQL8);
?>



<?php
	
   	$aSQL9 = "SELECT * from b_ce_type";
	$aQResult9=mysqli_query($conn, $aSQL9);
?>



<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->



<?php
	   $stp_port_uim ="";
       while ($aRow = mysqli_fetch_assoc($aQResult))
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
	   $nte_uplink_port = $aRow["nte_uplink_port"];
	   
	   $stp_type = $aRow["stp_type"];
	   $stp_locn = $aRow["stp_locn"];
	   $stp_name = $aRow["stp_name"];
	   $stp_panel = $aRow["stp_panel"];
	   $stp_port = $aRow["stp_port"];
	   $stp_port_uim = $aRow["stp_port_uim"];
	   


	   $ce_type = $aRow["ce_type"];
	   $catatan = $aRow["catatan"];	   
	   $validating = $aRow["validating"];	   

	   
	   $user_id = $aRow["user_id"];
	   $date_time = $aRow["date_time"];

	   
       }

       mysqli_free_result($aQResult);

?>
<HTML>
<HEAD>
	<title>Update Data Bgest</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>Update Data BGES</h2>


<form action="data_update_process_.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
<!--    	<tr>
    <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
	</tr> -->
	<tr>
		<td>01. Witel</td>
	    <td>
			<select name="witel" size=1>
			<!--- <option>Pilih Profile</option> --->
			<?php 
				while($aRow1 = mysqli_fetch_assoc($aQResult1)){ 
					if($aRow1['witel'] == $witel)
						echo "<option value ='".$aRow1['witel']."' selected>" . $aRow1['witel'];
					else
						echo "<option value ='".$aRow1['witel']."'>" . $aRow1['witel'];
					echo "</option>";
				}
			?>
			</select>
		</td>
	</tr>	
  
   <tr><td>02. Serviceid</td> <td><input type="Text" name="serviceid" size="16" maxlength="50" value="<?php echo $serviceid;?>"></td></tr>
   
   <tr><td>03. Customer_name</td> <td><input type="Text" name="customer_name" size="50" maxlength="250" value="<?php echo $customer_name;?>"></td></tr>
   <tr><td>04. Customer_address	</td> <td><input type="Text" name="customer_address" size="50" maxlength="250" value="<?php echo $customer_address;?>"></td></tr>
   <tr><td>05. Installation_address</td> <td><input type="Text" name="installation_address" size="50" maxlength="250" value="<?php echo $installation_address;?>"></td></tr>
   
   <tr><td bgcolor="silver"><font color="black"><b>06. Lat</b></font></td> <td><input type="Text" name="lat" size="16" maxlength="16" readonly="yes" value="<?php echo $lat;?>"></td></tr>
   <tr><td bgcolor="silver"><font color="black"><b>07. Lgt</b></font> <td><input type="Text" name="lgt" size="16" maxlength="16" readonly="yes" value="<?php echo $lgt;?>"></td></tr>

   
   	<tr>
	<td>08. Service_type</td>
    <td>
		<select name="service_type" size=1>
		<!--- <option>Pilih Profile</option> --->
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult2)){ 
				if($aRow1['service_type'] == $service_type)
					echo "<option value ='".$aRow1['service_type']."' selected>" . $aRow1['service_type'];
				else
					echo "<option value ='".$aRow1['service_type']."'>" . $aRow1['service_type'];
				echo "</option>";
			}
		?>
	</select>
	</td>
	</tr>
   
   
	<tr>
	<td>09. Connectivity_type</td>
    <td>
		<select name="connectivity_type" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult3)){ 
				if($aRow1['connectivity_type'] == $connectivity_type)
					echo "<option value ='".$aRow1['connectivity_type']."' selected>" . $aRow1['connectivity_type'];
				else
					echo "<option value ='".$aRow1['connectivity_type']."'>" . $aRow1['connectivity_type'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr>
	

   
	<tr>
	<td>10. Astinet_type</td>
    <td>
		<select name="astinet_type" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult4)){ 
				if($aRow1['astinet_type'] == $astinet_type)
					echo "<option value ='".$aRow1['astinet_type']."' selected>" . $aRow1['astinet_type'];
				else
					echo "<option value ='".$aRow1['astinet_type']."'>" . $aRow1['astinet_type'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr>
	
	
	
	
	<tr>
	<td bgcolor="lime">11. NTE_Type</td>
    <td>
		<select name="nte_type" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult5)){ 
				if($aRow1['nte_type'] == $nte_type)
					echo "<option value ='".$aRow1['nte_type']."' selected>" . $aRow1['nte_type'];
				else
					echo "<option value ='".$aRow1['nte_type']."'>" . $aRow1['nte_type'];
				echo "</option>";
			}
		?>		
	</select>
	</td>
	</tr>   
   
   

   	<tr>
	<td bgcolor="lime">12. NTE_Model</td>
    <td>
		<select name="nte_model" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult6)){ 
				if($aRow1['nte_model'] == $nte_model)
					echo "<option value ='".$aRow1['nte_model']."' selected>" . $aRow1['nte_model'];
				else
					echo "<option value ='".$aRow1['nte_model']."'>" . $aRow1['nte_model'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr> 
   
   
   
   <tr><td bgcolor="lime">13. NTE_SN	</td> <td><input type="Text" name="nte_sn" size="30" maxlength="50" value="<?php echo $nte_sn;?>"></td></tr>
   
   	<tr>
	<td bgcolor="lime">14. NTE_Downlink/Port</td>
    <td>
		<select name="nte_uplink_port" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult6b)){ 
				if($aRow1['nte_uplink_port'] == $nte_uplink_port)
					echo "<option value ='".$aRow1['nte_uplink_port']."' selected>" . $aRow1['nte_uplink_port'];
				else
					echo "<option value ='".$aRow1['nte_uplink_port']."'>" . $aRow1['nte_uplink_port'];
				echo "</option>";
			}
		?>	
		</select>
	</td>
	</tr> 
   
   
   
   
    <tr>
	<td bgcolor="yellow">15. Stp_type</td>
    <td>
		<select name="stp_type" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult7a)){ 
				if($aRow1['stp_type'] == $stp_type)
					echo "<option value ='".$aRow1['stp_type']."' selected>" . $aRow1['stp_type'];
				else
					echo "<option value ='".$aRow1['stp_type']."'>" . $aRow1['stp_type'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr>  
   
   
   
   <tr><td bgcolor="yellow"><font color="black"><b>16. Stp_Locn</b></font>	</td> <td><input type="Text" name="stp_locn" size="50" maxlength="50" value="<?php echo $stp_locn;?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>17. Stp_name</b></font>	</td> <td><input type="Text" name="stp_name" size="50" maxlength="50" value="<?php echo $stp_name;?>"></td></tr>   
   

   	<tr>
	<td bgcolor="yellow">18. Stp_panel</td>
    <td>
		<select name="stp_panel" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult7)){ 
				if($aRow1['stp_panel'] == $stp_panel)
					echo "<option value ='".$aRow1['stp_panel']."' selected>" . $aRow1['stp_panel'];
				else
					echo "<option value ='".$aRow1['stp_panel']."'>" . $aRow1['stp_panel'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr>    
   
   

   	<tr>
	<td bgcolor="yellow">19. Stp_port</td>
    <td>
		<select name="stp_port" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult8)){ 
				if($aRow1['stp_port'] == $stp_port)
					echo "<option value ='".$aRow1['stp_port']."' selected>" . $aRow1['stp_port'];
				else
					echo "<option value ='".$aRow1['stp_port']."'>" . $aRow1['stp_port'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr> 
	
  
  <tr><td bgcolor="yellow"><font color="black"><b>20. Stp_Port_Uim</b></font>	</td> <td><input type="Text" name="stp_port_uim" size="50" maxlength="50" value="<?php echo $stp_port_uim;?>"></td></tr>   
   

  

   	<tr>
	<td>21. CE_type</td>
    <td>
		<select name="ce_type" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult9)){ 
				if($aRow1['ce_type'] == $ce_type)
					echo "<option value ='".$aRow1['ce_type']."' selected>" . $aRow1['ce_type'];
				else
					echo "<option value ='".$aRow1['ce_type']."'>" . $aRow1['ce_type'];
				echo "</option>";
			}
		?>	
	</select>
	</td>
	</tr> 
	
   <tr><td>22. Catatan	</td> <td><input type="Text" name="catatan" size="30" maxlength="50" value="<?php echo $catatan;?>"></td></tr>

   
   	<tr>
	<td bgcolor="black"><font color="white">23. Status</font><td>
    
		<select name="validating" size=1>
		<?php 
			while($aRow1 = mysqli_fetch_assoc($aQResult_)){ 
				if($aRow1['validating'] == $validating)
					echo "<option value ='".$aRow1['validating']."' selected>" . $aRow1['validating'];
				else
					echo "<option value ='".$aRow1['validating']."'>" . $aRow1['validating'];
				echo "</option>";
			}
		?>	
	</select>
	</tr>
	
	
	       	<tr class="head">
 			<td colspan="0" bgcolor="red"><font color="white">Are You Sure?</td></font>
			<td bgcolor="RED">
			<input type="radio" name="confirm" value="yes" ><font color="white">Yes</font>
    		<input type="radio" name="confirm" value="no" checked><font color="white">No</font>
  			</td>
			</tr>
   
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	
			
 
   <input type="Hidden" name="id" value="<?php echo $id;?>">
   <input type="Hidden" name="batal" value="batal">	
   <input type="Submit" value="Update">



   

</form>


</BODY>
</HTML>
