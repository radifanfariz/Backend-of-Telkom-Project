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
KaNOSS
</div>
</tr>	
<p>




<!--- ODP KANOSS --->

 

<tr> 
<a href="../admin/project/odp/distinct_witel_list.php" target="tengah_bawah">DISTINCT(WITEL)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp/distinct_datel_list.php" target="tengah_bawah">DISTINCT(DATEL)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp/distinct_witel_datel_list.php" target="tengah_bawah">GROUPBY(Witel/Datel)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp/odp_kanoss_witel_null.php" target="tengah_bawah">ODP (Witel is null)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp/odp_kanoss_datel_null.php" target="tengah_bawah">ODP (Datel is null)</a><br>
</tr>


<tr> 
<a href="../admin/project/odp/odp_kanoss_witel_invalid.php" target="tengah_bawah">ODP Kanoss, witel invalid)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp/odp_kanoss_datel_invalid.php" target="tengah_bawah">ODP Kanoss, datel invalid)</a><br><br>
</tr>

<tr> 
<a href="../admin/project/odp/monitoring_odp_kanoss_upload_list.php" target="tengah_bawah">LIST ODP KaNOSS</a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp/odp_kanoss_urut_odp_name.php" target="tengah_bawah">[ODP_KaNoss Urut_Name]</a><br>
</tr

<tr> 
<a href="../admin/project/odp/rekap_odp_kanoss_upload_.php" target="tengah_bawah">REKAP ODP LIST</a><br>
</tr

<tr> 
<a href="../admin/project/odp/del_odp_tgl_.php" target="tengah_bawah">Del ODP Tgl</a><br>
</tr


<tr> 
<a href="../admin/project/odp/odp_kanoss_doeble.php" target="tengah_bawah">[ODP_EID_Count]</a><br>
</tr

<tr> 
<a href="../admin/project/odp/odp_eid_beda_.php" target="tengah_bawah"><font color="black">ODP_Name_kaNoss_Duplicat</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp/odp_latitude_longitude_0_.php" target="tengah_bawah"><font color="black">ODP_Latitude/Longitude_0</font></a><br>
</tr>	 



<tr> 
<a href="../admin/project/odp/odp_kapasitas_.php" target="tengah_bawah"><font color="black">ODP_Name KAPASITAS</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp/graph_odp_broken.php" target="tengah_bawah"><font color="black">GRAPH_ODP_BROKEN</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp/mapping_olt_odp_.php" target="tengah_bawah"><font color="black">Mapping_OLT_ODP</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp/searching_olt_odp.php" target="tengah_bawah"><font color="black">SEARCHING_OLT_ODP</font></a><br>
</tr>	 




<br><br>




