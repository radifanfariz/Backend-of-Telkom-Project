<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda
	//include "auth.php";
	echo "id=".$_GET["id"]."<br>";
	$id=$_GET["id"];
 ?>
 


<?php
  //session_start();
  include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  //$aSQL = "SELECT * from images where id = $_GET["id"] ";
  $aSQL = "SELECT * from images where id = $id";
  
  //$aSQL = "SELECT * from images where id =3 ";
  
  $aQResult=mysqli_query($conn, $aSQL);
?>


<head>
	<title>Data Module</title>
	 <link rel="stylesheet" type="text/css" href="Style/style2.css"></link>
</head>

<?php

       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   
	   $timestamp = $aRow["timestamp"];
	   $regional = $aRow["regional"];
	   $witel = $aRow["witel"];
	   
	   $service_order = $aRow["service_order"];
	   $service_type = $aRow["service_type"];
	   $service_number = $aRow["service_number"];
	   
       $cust_name = $aRow["cust_name"];
       $cust_addr = $aRow["cust_addr"];
	   $inst_addr = $aRow["inst_addr"];
	   
	   $latitude_inst_addr = $aRow["latitude_inst_addr"];
	   $longitude_inst_addr = $aRow["longitude_inst_addr"];
	   
	   $stp_name = $aRow["stp_name"];
	   $stp_panel = $aRow["stp_panel"];
	   $stp_port = $aRow["stp_port"];
	   
	   $latitude_odp = $aRow["latitude_odp"];
	   $longitude_odp = $aRow["longitude_odp"];
	   
	   $kendala_teknis = $aRow["kendala_teknis"];
	   $kendala_nonteknis = $aRow["kendala_nonteknis"];
	   $keterangan_kendala = $aRow["keterangan_kendala"];
	   
	   $barcode_dw = $aRow["barcode_dw"];
		
	   $user_id = $aRow["user_id"];
	   $imei = $aRow["imei"];
	   
	   $latitude = $aRow["latitude"];
	   $longitude = $aRow["longitude"];
	   
	   
	   $name = $aRow["name"];	   
	   $url = $aRow["url"];
	   $filename = $aRow["filename"];	   	   
       
	   }
       mysqli_free_result($aQResult);

?>

<HTML>
<HEAD>
	<title>View Data Bgest</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>View Data MYTOOLS</h2>


<form action="data_mytools_list.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   
   <tr><td bgcolor="yellow">01. Timestamp </td> <td>: <input type="Text" name="timestamp" size="30" maxlength="50" readonly="yes" value="<?php echo $timestamp;?>"></td></tr>
   <tr><td bgcolor="yellow">02. User_id	</td> <td>: <input type="Text" name="user_id" size="30" maxlength="50" readonly="yes" value="<?php echo $user_id;?>"></td></tr>
   
   <tr><td bgcolor="#FF8484">03. Regional</td> <td>: <input type="Text" name="regional" size="30" maxlength="50" readonly="yes" value="<?php echo $regional;?>"></td></tr>
   <tr><td bgcolor="#FF8484">04. Witel</td> <td>: <input type="Text" name="witel" size="30" maxlength="50" readonly="yes" value="<?php echo $witel;?>"></td></tr>
   
   <tr><td bgcolor="#FF8484">05. Service Order</td> <td>: <input type="Text" name="service_order" size="30" maxlength="50" readonly="yes" value="<?php echo $service_order;?>"></td></tr>
   <tr><td bgcolor="#FF8484">06. Service Type</td> <td>: <input type="Text" name="service_type" size="30" maxlength="50" readonly="yes" value="<?php echo $service_type;?>"></td></tr>
   <tr><td bgcolor="#FF8484">07. Service Number</td> <td>: <input type="Text" name="service_number" size="30" maxlength="50" readonly="yes" value="<?php echo $service_number;?>"></td></tr>
   
   <tr><td bgcolor="lime">08. Custumer_name</td> <td>: <input type="Text" name="cust_name" size="30" maxlength="50" readonly="yes" value="<?php echo $cust_name;?>"></td></tr>
   <tr><td bgcolor="lime">09. Customer_address	</td> <td>: <input type="Text" name="cust_addr" size="30" maxlength="250" readonly="yes" value="<?php echo $cust_addr;?>"></td></tr>
   <tr><td bgcolor="lime">10. Installation_address</td> <td>: <input type="Text" name="inst_addr" size="30" maxlength="250" readonly="yes" value="<?php echo $inst_addr;?>"></td></tr>
  
   <tr><td bgcolor="aqua"><font color="black"><b>11. Lat Inst Addr</b></font></td> <td>: <input type="Text" name="latitude_inst_addr" size="30" maxlength="16" readonly="yes" value="<?php echo $latitude_inst_addr;?>"></td></tr>
   <tr><td bgcolor="aqua"><font color="black"><b>12. Lgt Inst Addr</b></font> <td>: <input type="Text" name="longitude_inst_addr" size="30" maxlength="16" readonly="yes" value="<?php echo $longitude_inst_addr;?>"></td></tr>
  
   <tr><td bgcolor="yellow"><font color="black"><b>13. Stp_Name</b></font>	</td> <td>: <input type="Text" name="stp_name" size="30" maxlength="90" readonly="yes" value="<?php echo $stp_name;?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>14. Stp_Panel</b></font>	</td> <td>: <input type="Text" name="stp_panel" size="30" maxlength="90" readonly="yes" value="<?php echo $stp_panel;?>"></td></tr>   
   <tr><td bgcolor="yellow"><font color="black"><b>15. Stp_Port</b></font>	</td> <td>: <input type="Text" name="stp_port" size="30" maxlength="90" readonly="yes" value="<?php echo $stp_port;?>"></td></tr>   
   
   
   <tr><td bgcolor="aqua"><font color="black"><b>16. Latitude ODP</b></font></td> <td>: <input type="Text" name="latitude_odp" size="30" maxlength="16" readonly="yes" value="<?php echo $latitude_odp;?>"></td></tr>
   <tr><td bgcolor="aqua"><font color="black"><b>17. Longitude ODP</b></font> <td>: <input type="Text" name="longitude_odp" size="30" maxlength="16" readonly="yes" value="<?php echo $longitude_odp;?>"></td></tr>
  
   <tr><td bgcolor="yellow"><font color="black"><b>18. Kendala Teknis</b></font></td> <td>: <input type="Text" name="kendala_teknis" size="30" maxlength="16" readonly="yes" value="<?php echo $kendala_teknis;?>"></td></tr>
   <tr><td bgcolor="yellow"><font color="black"><b>19. Kendala Non Teknis</b></font> <td>: <input type="Text" name="kendala_nonteknis" size="30" maxlength="16" readonly="yes" value="<?php echo $kendala_nonteknis;?>"></td></tr>
  
  
  
   <tr><td bgcolor="lime"><font color="black"><b>20. QRcode_DW</b></font></td> <td>: <input type="Text" name="barcode_dw" size="30" maxlength="16" readonly="yes" value="<?php echo $barcode_dw;?>"></td></tr>
      
   <tr><td bgcolor="lime"><font color="black"><b>22. IMEI</b></font></td> <td>: <input type="Text" name="imei" size="30" maxlength="16" readonly="yes" value="<?php echo $imei;?>"></td></tr>
 

    <tr><td bgcolor="lime"><font color="black"><b>23. Name</b></font></td> <td>: <input type="Text" name="name" size="30" maxlength="16" readonly="yes" value="<?php echo $name;?>"></td></tr>
    <tr><td bgcolor="lime"><font color="black"><b>24. Url</b></font></td> <td>: <input type="Text" name="url" size="30" maxlength="16" readonly="yes" value="<?php echo $url;?>"></td></tr>
    <tr><td bgcolor="lime"><font color="black"><b>25. FileName</b></font></td> <td>: <input type="Text" name="filename" size="30" maxlength="16" readonly="yes" value="<?php echo $filename;?>"></td></tr>

	</table>
	
	<input type="Submit" name="Submit" value="CLOSE">
	
</form>


</BODY>
</HTML>
