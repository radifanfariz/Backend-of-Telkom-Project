<?
	session_start();
?>


<?

    //$_SESSION["uname"] = "test1";

	//$_SESSION[login0] = $_POST[login];
	//echo $_SESSION[login0]."<br>";
	
	//$_SESSION[password0] = $_POST[password];
	
	//echo $_SESSION[nama0]."<br>";
?>

<?php
$timezone = "Asia/Jakarta";
if(function_exists('date_default_timezone_set')) date_default_timezone_set($timezone);
//echo date('d-m-Y H:i:s');
?>


<body bgcolor="#808000">

	<?php
  	//print (date ("l dS of F Y"));
  	//print "<br>";
	
	print "<b>". "Medan, " .date("Y-m-d")."</b>"."<br>"."<br>"; 
  	
	
	//print (date ("m"));
	
	//print (date ("Y/m/d"));
	//print (date ("H:i:s"))."<br>";
	
	//print (date ("Y/m/d"));
	//print "<br>"."<br>";
	?>

	
	<?php
	//if($c_profile0==null)   
	
	if($_SESSION[c_profile0]==null)   
	{
	//include "login.html";
	//print "<br>";
	}
	else
	{
	//print "c_profile0 = ".$_SESSION[c_profile0]."<br>";
	print "<br>"."Welcome: ".$_SESSION[nama0]."<BR>";
	//PRINT "<a href=logout.php>Logout</a>";
	}
	?> 

	
	<?php
   	//include "counter.php";
    print "<br>";
	?>
       

	   
	   
	   
    <?php
	//include "searching.html";
	//print "<br>";
	?>


 
      

</body>



<table>

<tr>
<div>	 
<a href="kiri_bawah_home.php"><img src="../images/home.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>		 



<tr>
<div>	 
<a href="../login/login.php" target="tengah_bawah"><img src="../images/login.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>		 

<tr>
<div>	 
<a href="../login/logout.php" target="tengah_bawah"> <img src="../images/logout.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	


 <tr>
<div>	 
<a href="../admin/hotnews/hotnews.php" target="tengah_bawah"> <img src="../images/hotnews.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	


<tr>
<div> 
<a href="../login/password_change.php" target="tengah_bawah"><img src="../images/changepassword.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	 

<tr>
<div>	 
<a href="../admin/admin.php" target="tengah_bawah"><img src="../images/administrator.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	 


<tr>
<div>	 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/whoami.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	 

</table>


<table>

<tr>
<div>	 
SERVICE STATUS
</div>
</tr>	
<p>




<!--- ODP KANOSS --->
<tr> 
<a href="../admin/scripts/uploadfile3/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">Upload3 Service Comply</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/service_status/rekap_service_status_list.php" target="tengah_bawah">Rekap Sevice_Status</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/service_status_comply_list.php" target="tengah_bawah">Sevice_Status_Comply</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/service_status_not_comply_list.php" target="tengah_bawah">Sevice_Status_Not_Comply</a><br><br?
</tr>


<tr> 
<a href="../admin/project/service_status/optic_rasa_tembaga_rekap.php" target="tengah_bawah">Optic rasa tembaga rekap</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/service_gpon_not_complay.php" target="tengah_bawah">Service Gpon Not Complay</a><br>
</tr>



<br>
<tr> 
<a href="../admin/project/service_status/group_by_address.php" target="tengah_bawah">Group by Address</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/searching.php" target="tengah_bawah">Searching (Service Comply)</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/searching2.php" target="tengah_bawah">Search IP_Rack-Shelf-Slot</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/occupancy_odp.php" target="tengah_bawah">OCCUPANCY ODP</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/packet_indihome_non_fiber.php" target="tengah_bawah">INDIHOME_Non_Fiber_1P</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/packet_indihome_fiber.php" target="tengah_bawah">INDIHOME_Fiber_1P</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper_.php" target="tengah_bawah">OPTIC_RASA_COPPER_</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper2_.php" target="tengah_bawah">OPTIC_RASA_COPPER2_</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper.php" target="tengah_bawah">OPTIC_RASA_COPPER</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper_rekap1.php" target="tengah_bawah">REKAP_W_OPTIC_COPPER</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper_rekap2.php" target="tengah_bawah">REKAP_D_OPTIC_COPPER</a><br>
</tr>

<tr> 
<a href="../admin/project/service_status/optic_rasa_cooper_rekap3.php" target="tengah_bawah">REKAP_S_OPTIC_COPPER</a><br>
</tr>


<tr> 
<a href="../admin/project/service_status/mapping_olt_odp_port.php" target="tengah_bawah">OLT_ODP_PORT</a><br>
</tr>


<br><br>




