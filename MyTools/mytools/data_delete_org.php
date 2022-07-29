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
	   
	   $nte_model = $aRow["nte_model"];
	   $stp_port = $aRow["stp_port"];
	   $sto = $aRow["sto"];

	   $nte_sn = $aRow["nte_sn"];
	   $ce_type = $aRow["ce_type"];

	   $nte_type = $aRow["nte_type"];
	   $catatan = $aRow["catatan"];	   

	   
	   $user_id = $aRow["user_id"];
	   $date_time = $aRow["date_time"];

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
   <tr><td>02. Serviceid</td> <td>: <input type="Text" name="serviceid" size="30" maxlength="50" readonly="yes" value="<?echo $serviceid?>"></td></tr>
   <tr><td>03. Customer_name</td> <td>: <input type="Text" name="customer_name" size="30" maxlength="50" readonly="yes" value="<?echo $customer_name?>"></td></tr>
   <tr><td>04. Customer_address	</td> <td>: <input type="Text" name="customer_address" size="50" maxlength="250" readonly="yes" value="<?echo $customer_address?>"></td></tr>
   <tr><td>05. Installation_address</td> <td>: <input type="Text" name="installation_address" size="50" maxlength="250" readonly="yes" value="<?echo $installation_address?>"></td></tr>
   
   <tr><td><font color="black"><b>06. Lat</b></font></td> <td>: <input type="Text" name="lat" size="16" maxlength="16" readonly="yes" value="<?echo $lat?>"></td></tr>
   <tr><td><font color="black"><b>07. Lgt</b></font> <td>: <input type="Text" name="lgt" size="16" maxlength="16" readonly="yes" value="<?echo $lgt?>"></td></tr>

   <tr><td><font color="black"><b>08. Service_type</b></font>	</td> <td>: <input type="Text" name="service_type" size="50" maxlength="50" readonly="yes" value="<?echo $service_type?>"></td></tr>   
   <tr><td><font color="black"><b>09. Connectivity_type</b></font>	</td> <td>: <input type="Text" name="connectivity_type" size="50" maxlength="50" readonly="yes" value="<?echo $connectivity_type?>"></td></tr>   
   <tr><td><font color="black"><b>10. Astinet_type</b></font>	</td> <td>: <input type="Text" name="astinet_type" size="50" maxlength="50" readonly="yes" value="<?echo $astinet_type?>"></td></tr>   

   <tr><td>11. NTE_model	</td> <td>: <input type="Text" name="nte_model" size="30" maxlength="50" readonly="yes" value="<?echo $nte_model?>"></td></tr>   
   <tr><td><font color="black"><b>12. Stp_port</b></font>	</td> <td>: <input type="Text" name="stp_port" size="50" maxlength="50" readonly="yes" value="<?echo $stp_port?>"></td></tr>   
   <tr><td>13. Sto</td> <td>: <input type="Text" name="sto" size="30" maxlength="50" readonly="yes" value="<?echo $sto?>"></td></tr>
   <tr><td>14. NTE_SN	</td> <td>: <input type="Text" name="nte_sn" size="30" maxlength="50" readonly="yes" value="<?echo $nte_sn?>"></td></tr>
   <tr><td>15. CE_type	</td> <td>: <input type="Text" name="ce_type" size="30" maxlength="50" readonly="yes" value="<?echo $ce_type?>"></td></tr>
   <tr><td>16. Catatan	</td> <td>: <input type="Text" name="catattan" size="30" maxlength="50" readonly="yes" value="<?echo $catatan?>"></td></tr>


 
   <tr><td>17. User_id	</td> <td>: <input type="Text" name="user_id" size="30" maxlength="50" readonly="yes" value="<?echo $user_id?>"></td></tr>
   <tr><td>18. Date_time </td> <td>: <input type="Text" name="date_time" size="30" maxlength="50" readonly="yes" value="<?echo $date_time?>"></td></tr>



   <input type="Hidden" name="id" value="<?echo $id?>">
   <input type="Hidden" name="batal" value="batal">	
   <input type="Submit" value="Delete">
   <input type="Submit" name="Submit" value="    Batal   ">
   
   
    		<tr class="head">
 			<td colspan="0" bgcolor="red"><font color="white">Are You Sure?</td></font>
			<td bgcolor="RED">
			<input type="radio" name="confirm" value="yes" ><font color="white">Yes</font>
    		<input type="radio" name="confirm" value="no" checked><font color="white">No</font>
  			</td>
			</tr>
   
   </table>
</form>


</BODY>
</HTML>
