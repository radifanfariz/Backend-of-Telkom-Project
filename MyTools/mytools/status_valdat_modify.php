<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>

<?php

//echo "link=".$_GET[link]."<br>";
//echo "idx=".$_GET['idx']."<br>";

?>




<?php
	include "connection/connection.php";
   	$aSQL3 = "SELECT *  from t_user_mobile where idx = $_GET[idx]";
	$aQResult3=mysqli_query($conn, $aSQL3);
	
       while ($aRow3 = mysqli_fetch_array($aQResult3))
       {
	   //echo "c_profiles=".$aRow3["c_profile"];
	   $c_profiles = $aRow3["c_profile"];
       }
       mysqli_free_result($aQResult3);
?>




<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL2 = "SELECT *  from p_valdat;";
	$aQResult2=mysqli_query($conn, $aSQL2);
?>




<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT *  from t_sales_force where idx = $_GET[idx] ";
   	$aQResult = mysqli_query($conn, $aSQL);

       while ($aRow = mysqli_fetch_array($aQResult))
       {
       echo "<br>";
       $_idx = $aRow["idx"];
	   $_witel=$aRow["witel"];
	   $_cust_name=$aRow["cust_name"];
	   $_internet_number = $aRow["internet_number"];
       $_phone_number = $aRow["phone_number"];
	   
	   $_latitude_inst_addr = $aRow["latitude_inst_addr"];
	   $_longitude_inst_addr = $aRow["longitude_inst_addr"];
	   
	   $_stp_name=$aRow["stp_name"];
	   $_stp_panel=$aRow["stp_panel"];
	   $_stp_port=$aRow["stp_port"];
	   
	   $_barcode_result=$aRow["barcode_result"];
	   $_barcode_port=$aRow["barcode_port"];
	   $_barcode_dw=$aRow["barcode_dw"];
	   
	   
	   $_status_valdat = $aRow["status_valdat"];

       echo "<br>";
       }
       mysqli_free_result($aQResult);
?>


<HTML>
<head>
	<title>Data Module</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<BODY bgcolor="#A8A8FF">

<h3>UPDATE STATUS VALIDASI DATA QRCODE, LATLNG INSTALATION ADDRESS</h3>




<form action="status_valdat_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr class="head"><td>WITEL</td> <td><input type="Text" name="witel" readonly="yes" size="30" maxlength="50" readonly="yes" value="<?php echo $_witel?>"></td></tr>
   <tr class="head"><td>CUST_NAME</td> <td><input type="Text" name="cust_name" size="30" maxlength="50" readonly="yes" value="<?php echo $_cust_name?>"></td></tr>   
   <tr class="head"><td>INTERNET_NUMBER</td> <td><input type="Text" name="internet_number" size="30" maxlength="50" readonly="yes" value="<?php echo $_internet_number?>"></td></tr>
   <tr class="head"><td>PHONE_NUMBER</td> <td><input type="Text" name="phone_number" size="30" maxlength="50" readonly="yes" value="<?php echo $_phone_number?>"></td></tr>

   <tr class="head"><td>LAT_INST_ADDR</td> <td><input type="Text" name="latitude_inst_addr" size="30" maxlength="50" readonly="yes" value="<?php echo $_latitude_inst_addr?>"></td></tr>
   <tr class="head"><td>LNG_INST_ADDR</td> <td><input type="Text" name="longitude_inst_addr" size="30" maxlength="50" readonly="yes" value="<?php echo $_longitude_inst_addr?>"></td></tr>
   
   <tr class="head"><td>ODP_NAME</td> <td><input type="Text" name="stp_name" size="30" maxlength="50" readonly="yes" value="<?php echo $_stp_name?>"></td></tr>
   <tr class="head"><td>ODP_PANEL</td> <td><input type="Text" name="stp_panel" size="30" maxlength="50" readonly="yes" value="<?php echo $_stp_panel?>"></td></tr>
   <tr class="head"><td>ODP_PORT</td> <td><input type="Text" name="stp_port" size="30" maxlength="50" readonly="yes" value="<?php echo $_stp_port?>"></td></tr>
   
   <tr class="head"><td>QRCODE_ODP</td> <td><input type="Text" name="barcode_result" size="30" maxlength="50" readonly="yes" value="<?php echo $_barcode_result?>"></td></tr>
   <tr class="head"><td>QRCODE_PORT</td> <td><input type="Text" name="barcode_port" size="30" maxlength="50" readonly="yes" value="<?php echo $_barcode_port?>"></td></tr>
   <tr class="head"><td>QRCODE_DC</td> <td><input type="Text" name="barcode_dw" size="30" maxlength="50" readonly="yes" value="<?php echo $_barcode_dw?>"></td></tr>
   
   
   
   
   
   	<tr class="head">
	<td>Status Validasi :</td>
    <td>
		<select name="status_valdat">
		<!--- <option>Pilih Profile</option> --->
		<?php 
		while ($aRow2 = mysqli_fetch_array($aQResult2)) {?>
			<option value="<?php echo $aRow2["status_valdat"]?>"  <?php if($aRow2["status_valdat"]==$_status_valdat) echo "selected"?> > <!--- tampil dilayar --->
				<?php echo $aRow2["status_valdat"]?><!--- dropdown menu --->
			</option>
		<?php
		}
		?>	
		</select>
	
	</td>
	</tr>
   
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Hidden" name="idx" value="<?php echo$_GET['idx']?>">
   <input type="Hidden" name="link" value="<?php echo $link?>">
   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
