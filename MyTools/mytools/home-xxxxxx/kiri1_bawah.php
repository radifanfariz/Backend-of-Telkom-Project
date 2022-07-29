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


 
       <br>

</body>



<table>

<tr>
<div>	 
<a href="../login/login.php" target="tengah_bawah"><img src="../images/home.jpg" alt="" width="160" height="22" border="0"></a>
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
<p>

<table>

<tr> 
<a href="kiri_bawah.php"><img src="../images/dslam_zte.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="kiri_bawah.php"><img src="../images/msan_zte.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="kiri_bawah.php"><img src="../images/olt_zte.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<p><!---  --->

<tr> 
<a href="xxx.php"><img src="../images/dslam_huawei.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/msan_huawei.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/olt_huawei.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<p><!---  --->

<tr> 
<a href="who_am_i.php"><img src="../images/utilitas_bw_per_olt.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_card.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_ont.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 



<p><!---  --->

<tr> 
<a href="kiri_bawah.php"><img src="../images/graph1.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/graph2.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/graph3.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<p><!---  --->

<tr> 
<a href="kiri_bawah.php"><img src="../images/monitoring_occ_port_ont.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/monitoring_card_olt.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/monitoring_port_ont.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<p><!---  --->

<tr> 
<a href="kiri_bawah.php"><img src="../images/searching_card_in_a_witel.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="who_am_i.php" target="tengah_bawah"><img src="../images/searching_card_in_all_witel.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 




</table>


<tr>
<div>	 
<a href="../admin/project/graph1.php" target="tengah_bawah">GRAPH-1</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/graph2.php" target="tengah_bawah">GRAPH-2</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/graph3.php" target="tengah_bawah">GRAPH-3</a></a>
</div>
</tr>	


<tr>
<div>	 
<a href="../admin/project/occupancy_per_module.php" target="tengah_bawah">Monitoring_OCCUPANCY</a></a>
</div>
</tr>	



<tr>
<div>	 
<a href="../admin/project/monitoring_per_olt_module_list.php" target="tengah_bawah">Monitoring_Per_Olt_module</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/monitoring_per_olt_ont_list.php" target="tengah_bawah">Monitoring_per_olt_Ont</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/monitoring_per_olt_ont_list_.php" target="tengah_bawah">Monitoring_per_olt_Ont_</a></a>
</div>
</tr>	



<tr>
<div>	 
<a href="../admin/project/searching1_card.php" target="tengah_bawah">Searching Specific Card</a></a>
</div>
</tr>	


<tr>
<div>	 
<a href="../admin/project/searching2_card.php" target="tengah_bawah">Searching Specific Card in Witel</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/insert_into_new_table.php" target="tengah_bawah">Insert_into_new_Table</a></a>
</div>
</tr>

<tr>
<div>	 
<a href="../admin/project/utilitas1_bandwidth.php" target="tengah_bawah">Utilitas1 Bandwidth</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/utilitas2_bandwidth.php" target="tengah_bawah">Utilitas2 Bandwidth</a></a>
</div>
</tr>	

<tr>
<div>	 
<a href="../admin/project/utilitas3_bandwidth.php" target="tengah_bawah">Utilitas3 Bandwidth</a></a>
</div>
</tr>	
