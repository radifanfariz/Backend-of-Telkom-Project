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
ZTE
</div>
</tr>	
<p>

<tr> 
<a href="../admin/project/zte/olt/monitoring_port_ont_list.php" target="tengah_bawah"><img src="../images/monitoring_port_ont.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/monitoring_card_olt_list.php" target="tengah_bawah"><img src="../images/monitoring_card_olt.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/monitoring_occ_per_card.php" target="tengah_bawah"><img src="../images/monitoring_occ_per_card.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 



<p></p>


<tr> 
<a href="../admin/project/zte/olt/utilitas_bandwidth_per_olt.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_olt.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/utilitas_bandwidth_per_card.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_card.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/utilitas_bandwidth_per_port_olt.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_port_olt.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/utilitas_bandwidth_per_port_ont.php" target="tengah_bawah"><img src="../images/utilitas_bw_per_port_ont.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 


<p><!---  --->

<tr> 
<a href="../admin/project/zte/olt/graph1.php" target="tengah_bawah"><img src="../images/graph1.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/graph2.php" target="tengah_bawah"><img src="../images/graph2.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/graph3.php" target="tengah_bawah"><img src="../images/graph3.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 



<p><!---  --->

<tr> 
<a href="../admin/project/zte/olt/searching2_card.php" target="tengah_bawah"><img src="../images/searching_card_in_a_witel.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/searching1_card.php" target="tengah_bawah"><img src="../images/searching_card_in_all_witel.jpg" alt="" width="159" height="16" border="0"></a>
</tr>	 




</table>


OnProgress....(do not click)<br>
<tr> 
<a href="../admin/project/zte/olt/insert_into_a_new_table.php" target="tengah_bawah"><img src="../images/insert_into_a_new_table.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/insert_into_a_new_table2.php" target="tengah_bawah">Copy Table2</a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/truncate_table.php" target="tengah_bawah">Truncate...ont_final</a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/new_table_list.php" target="tengah_bawah">Disp New Table3</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/_insert_into_t_zte_olt_ont_rss.php" target="tengah_bawah">t_zte_olt_ont_rss</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/_insert_into_t_zte_olt_ont_rss_final.php" target="tengah_bawah">t_zte_olt_ont_rss_final</a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/module_summary.php" target="tengah_bawah">MODULE_SUMMARY</a><br>
</tr>	 

<br>
<br>
<br>
<br>
<br>











<!--- RESOURCE CARD --->

<tr> 
<a href="../admin/scripts/uploadfile/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">UPLOAD RESOURCE CARD</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/monitoring_card_olt_upload_list.php" target="tengah_bawah">LIST RESOURCE CARD</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/rekap_olt_card_upload_list.php" target="tengah_bawah">REKAP CARD</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/card_summary.php" target="tengah_bawah">[CARD SUMMARY]</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/monitoring_card_olt_summary_list.php" target="tengah_bawah">CARD SUMMARY LIST</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/t_zte_olt_ont_summary_module.php" target="tengah_bawah"><font color="red">[TRUNCATE CARD]</font></a><br><br>
</tr>	 


<br>

<!--- RESOURCE ONU --->
<tr> 
<a href="../admin/scripts/uploadfile1/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">UPLOAD RESOURCE ONU</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/monitoring_olt_ont_upload_list.php" target="tengah_bawah">LIST RESORCE ONU</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/rekap_olt_ont_upload_list.php" target="tengah_bawah">REKAP ONU</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/port_1_1_xx.php" target="tengah_bawah">PORT_1_1_XX</a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/insert_into_a_new_table.php" target="tengah_bawah">[RR-SS-SS]FINAL</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/t_zte_olt_ont_summary_onu.php" target="tengah_bawah">[SUMMARY-ONU]</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/t_zte_olt_ont_summary_module.php" target="tengah_bawah">[SUMMARY-ONU-MODULE]</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/truncate_table_olt_ont.php" target="tengah_bawah"><font color="red">[TRUNCATE-ONU]</font></a><br><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/module_summary.php" target="tengah_bawah"><font color="green">INSTALLED vs USED</font></a><br>
</tr>	 



<br>


<!--- ODP KANOSS --->

<tr> 
<a href="../admin/scripts/uploadfile2/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">UPLOAD ODP KaNOSS</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/monitoring_odp_kanoss_upload_list.php" target="tengah_bawah">LIST ODP KaNOSS</a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/rekap_odp_kanoss_upload_list.php" target="tengah_bawah">REKAP ODP</a><br>
</tr

<tr> 
<a href="../admin/project/zte/olt/odp_kanoss_urut_odp_name.php" target="tengah_bawah">[ODP_KaNoss Urut_Name]</a><br>
</tr

<tr> 
<a href="../admin/project/zte/olt/odp_kanoss_doeble.php" target="tengah_bawah">[ODP_EID_Count]</a><br>
</tr

<tr> 
<a href="../admin/project/zte/olt/odp_eid_beda.php" target="tengah_bawah"><font color="green">ODP_Name_kaNoss_Duplicat</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/odp_connection.php" target="tengah_bawah"><font color="green">STATUS ODP</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/zte/olt/truncate_table_odp_kanoss.php" target="tengah_bawah"><font color="magenta"><font color="red">Truncate ODP_KaNoss</font></a><br>
</tr>	 


<tr> 
<font color="MAGENTA">LATITUDE/LONGITUDE</font><br>
</tr>	 

<br><br>




