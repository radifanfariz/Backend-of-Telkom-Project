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
<br>

<!--- RESOURCE CARD --->
CARD<BR>
<tr> 
<a href="../admin/project/zte/olt/monitoring_card_olt_upload_list.php" target="tengah_bawah">LIST RESOURCE CARD</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/rekap_olt_card_upload_list.php" target="tengah_bawah">REKAP CARD</a><br>
</tr>	 

 

<tr> 
<a href="../admin/project/zte/olt/monitoring_card_olt_summary_list.php" target="tengah_bawah">CARD SUMMARY LIST</a><br>
</tr>	 



<br>
ONU/ONT<BR>
<!--- RESOURCE ONU --->


<tr> 
<a href="../admin/project/zte/olt/monitoring_olt_ont_upload_list.php" target="tengah_bawah">LIST RESORCE ONU</a><br>
</tr>	 

<tr> 
<a href="../admin/project/zte/olt/rekap_olt_ont_upload_list.php" target="tengah_bawah">REKAP ONU</a><br>
</tr>	 

<BR>
COMPARE<BR>
<tr> 
<a href="../admin/project/zte/olt/module_summary.php" target="tengah_bawah">CARD (INST vs USED)</a><br>
</tr>	 



<br>

<br><br>




