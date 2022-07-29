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

<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<table>
<tr> 
<a href="../admin/project/odp_ff/odp_ff_menu.php" target="tengah_bawah"><img src="../images/odp_ff_process.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/odp_ff_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_total.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 

<tr> 
<a href="../admin/project/odp_ff/odp_ff_comply_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_comply.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/odp_ff_notcomply_1_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_notcomply1.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/odp_ff_notcomply_2_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_notcomply2.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 


 

<tr> 
<a href="../admin/project/odp_ff/odp_ff_duplicat.php" target="tengah_bawah"><img src="../images/odp_ff_duplicat.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 


<tr> 
<a href="../admin/project/odp_ff/odp_ff_list.php" target="tengah_bawah"><img src="../images/odp_ff_list_1000.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 

<tr> 
<a href="../admin/project/odp_ff/odp_ff_all_occ_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_occupancy.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 

<tr> 
<a href="../admin/project/odp_ff/odp_ff_all_idle_per_witel.php" target="tengah_bawah"><img src="../images/odp_ff_idle.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	 

<tr> 
<a href="../admin/project/odp_ff/graph_odp_ff_progress.php" target="tengah_bawah"><img src="../images/odp_ff_progress.jpg" alt="" width="159" height="16" border="0"></a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/rep_global_max.php" target="tengah_bawah">ODP-COMPLIANCE</a><BR><br>
</tr>	

OCCUPANVY ODP:<BR>
<tr> 
<a href="../admin/project/odp_ff/odp_ff_per_witel_occ_less_40persen.php" target="tengah_bawah">OCC ODP < 40%</a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/odp_ff_per_witel_occ_40_80persen.php" target="tengah_bawah">40% < OCC ODP < 80%</a><BR>
</tr>	

<tr> 
<a href="../admin/project/odp_ff/odp_ff_per_witel_occ_more_80persen.php" target="tengah_bawah">OCC ODP > 80%</a><BR><br>
</tr>	

SALES PLAND:<BR>
<tr> 
<a href="../admin/project/sales_pland/sales_pland_witel.php" target="tengah_bawah">Sales Pland per Witel</a><BR>
</tr>	

<tr> 
<a href="../admin/project/sales_pland/sales_pland_sto.php" target="tengah_bawah">Sales Pland per Sto</a><BR>
</tr>	

<tr> 
<a href="../admin/project/sales_pland/sales_pland_list.php" target="tengah_bawah">Sales Pland List</a><BR>
</tr>	

</table>

