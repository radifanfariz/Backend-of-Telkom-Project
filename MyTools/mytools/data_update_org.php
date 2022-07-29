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
       $serviceid = $aRow["serviceid"];
       $customer_name = $aRow["customer_name"];
       $customer_address = $aRow["customer_address"];
	   $installation_address = $aRow["installation_address"];

	   $lat = $aRow["lat"];
	   $lgt = $aRow["lgt"];
	   
	   $witel = $aRow["witel"];
	   $sto = $aRow["sto"];
	   $stp_port = $aRow["stp_port"];

	   $service_type = $aRow["service_type"];

	   $nte_type = $aRow["nte_type"];
	   $nte_model = $aRow["nte_model"];
	   $nte_sn = $aRow["nte_sn"];
	   
	   $ce_type = $aRow["ce_type"];
	   $ce_model = $aRow["ce_model"];
	   $ce_sn = $aRow["ce_sn"];
	   
	   $user_id = $aRow["user_id"];
	   $date_time = $aRow["date_time"];
	   $catatan = $aRow["catatan"];	   
	   $updating = $aRow["updating"];	   
	   
       }

       mysql_free_result($aQResult);

?>


<?
	//print "c_profile=".$_GET[c_profile]."<br>";	
?>



<HTML>
<HEAD>
	<title>Update Data Bgest</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>Update Data BGES</h2>


<form action="data_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>Serviceid</td> <td>: <input type="Text" name="c_profile" size="30" maxlength="50" value="<?echo $serviceid?>"></td></tr>
   <tr><td>Customer_name</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $customer_name?>"></td></tr>
   <tr><td>Customer_address	</td> <td>: <input type="Text" name="l_profile" size="50" maxlength="250" value="<?echo $customer_address?>"></td></tr>
   <tr><td>Installation_address</td> <td>: <input type="Text" name="l_profile" size="50" maxlength="250" value="<?echo $installation_address?>"></td></tr>
   
   <tr><td>Lat	</td> <td>: <input type="Text" name="l_profile" size="16" maxlength="16" value="<?echo $lat?>"></td></tr>
   <tr><td>Lgt</td> <td>: <input type="Text" name="l_profile" size="16" maxlength="16" value="<?echo $lgt?>"></td></tr>

   <tr><td>Witel	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $witel?>"></td></tr>
   <tr><td>Sto</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $sto?>"></td></tr>
   <tr><td>Stp_port	</td> <td>: <input type="Text" name="l_profile" size="50" maxlength="50" value="<?echo $stp_port?>"></td></tr>

   <tr><td>Service_type	</td> <td>: <input type="Text" name="l_profile" size="50" maxlength="50" value="<?echo $service_type?>"></td></tr>

   <tr><td>NTE_type	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $nte_type?>"></td></tr>
   <tr><td>NTE_model	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $nte_model?>"></td></tr>
   <tr><td>NTE_sn	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $nte_sn?>"></td></tr>

   <tr><td>CE_type	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $ce_type?>"></td></tr>
   <tr><td>CE_model	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $ce_model?>"></td></tr>
   <tr><td>CE_sn	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $ce_sn?>"></td></tr>
 
   <tr><td>User_id	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $user_id?>"></td></tr>
   <tr><td>Date_time </td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $date_time?>"></td></tr>
   <tr><td>Catatan	</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="50" value="<?echo $catatan?>"></td></tr>
   
   			<tr>
 			<td>Validating</td>
			<td>
    		<input type="radio" name="confirm" value="onprogress checked" >onprogress
    		<input type="radio" name="confirm" value="valid">valid
  			</td>
			</tr>
 
   <input type="Hidden" name="id" value="<?echo $_id?>">
   <input type="Hidden" name="batal" value="batal">	
   <input type="Submit" value="Update">
   <input type="Submit" name="Submit" value="    Batal   ">

</form>


</BODY>
</HTML>
