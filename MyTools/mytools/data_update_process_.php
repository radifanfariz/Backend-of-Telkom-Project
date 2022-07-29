


<?php

   print "id=".$_POST['id']."<br>";
   
   print "nte_type=".$_POST['nte_type']."<br>";
   print "nte_model=".$_POST['nte_model']."<br>";
   print "nte_sn=".$_POST['nte_sn']."<br>";
   print "ce_type=".$_POST['ce_type']."<br>";
	

	

	
	//print "stp_port=".$_POST[stp_port]."<br>";
 ?>
 
 
 
 <?
 
 if($confirm='yes')
 {
 
 ?>
 	



<form action="data_update_process_final_.php" method="POST">
   
 <table>
   <td>Update Data Bges</td>
   <tr><td>Enter Your Key</td> <td>: <input type="Password" name="keyword" size="16"></td></tr>
   </table>

   <input type="Hidden" name="id" value="<?php echo $_POST['id'];?>">
   
   <input type="Hidden" name="witel" value="<?php echo $_POST['witel'];?>">
   <input type="Hidden" name="serviceid" value="<?php echo $_POST['serviceid'];?>">
   
   <input type="Hidden" name="customer_name" value="<?php echo $_POST['customer_name'];?>">
   <input type="Hidden" name="customer_address" value="<?php echo $_POST['customer_address'];?>">
   <input type="Hidden" name="installation_address" value="<?php echo $_POST['installation_address'];?>">
   
   <input type="Hidden" name="service_type" value="<?php echo $_POST['service_type'];?>">
   <input type="Hidden" name="connectivity_type" value="<?php echo $_POST['connectivity_type'];?>">
   <input type="Hidden" name="astinet_type" value="<?php echo $_POST['astinet_type'];?>">
   
   <input type="Hidden" name="nte_type" value="<?php echo $_POST['nte_type'];?>">
   <input type="Hidden" name="nte_model" value="<?php echo $_POST['nte_model'];?>">
   <input type="Hidden" name="nte_sn" value="<?php echo $_POST['nte_sn'];?>">
   <input type="Hidden" name="nte_uplink_port" value="<?php echo $_POST['nte_uplink_port'];?>">
   
   <input type="Hidden" name="stp_type" value="<?php echo $_POST['stp_type'];?>">
   <input type="Hidden" name="stp_locn" value="<?php echo $_POST['stp_locn'];?>">
   <input type="Hidden" name="stp_name" value="<?php echo $_POST['stp_name'];?>">
   <input type="Hidden" name="stp_panel" value="<?php echo $_POST['stp_panel'];?>">
   <input type="Hidden" name="stp_port" value="<?php echo $_POST['stp_port'];?>">
   <input type="Hidden" name="stp_port_uim" value="<?php echo $_POST['stp_port_uim'];?>">
   
   
   
   <input type="Hidden" name="ce_type" value="<?php echo $_POST['ce_type'];?>">
   <input type="Hidden" name="catatan" value="<?php echo $_POST['catatan'];?>">
   <input type="Hidden" name="validating" value="<?php echo $_POST['validating'];?>">
   
   
   
   
   <input type="Hidden" name="confirm" value="<?php echo $_POST['confirm'];?>">
   
   <input type="Submit" value="Update">
 
   
</form>


<?
}
?>
