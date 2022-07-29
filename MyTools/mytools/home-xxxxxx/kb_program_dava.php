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
<a href="kb_home.php"><img src="../images/home.jpg" alt="" width="160" height="22" border="0"></a>
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
DAVA (DATA VALIDASI)<BR>
 

<tr> 
<a href="../admin/project/dava/jlh_sto_dlm_witel.php" target="tengah_bawah"><img src="../images/jlh_sto_dlm_witel.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	

<tr> 
<a href="../admin/project/dava/jlh_odc_dlm_witel.php" target="tengah_bawah"><img src="../images/jlh_odc_dlm_witel.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	

<tr> 
<a href="../admin/project/dava/jlh_odp_dlm_witel_.php" target="tengah_bawah"><img src="../images/jlh_odp_dlm_witel.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	


<tr> 
<a href="../admin/project/dava/jlh_odc_dlm_sto.php" target="tengah_bawah"><img src="../images/jlh_odc_dlm_sto.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	
 

<tr> 
<a href="../admin/project/dava/jlh_odp_dlm_odc.php" target="tengah_bawah"><img src="../images/jlh_odp_dlm_odc.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	


<tr> 
<a href="../admin/project/dava/searching_odc.php" target="tengah_bawah"><img src="../images/searching_odp_dlm_odc.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	

<tr> 
<a href="../admin/project/dava/searching_satu_odp.php" target="tengah_bawah"><img src="../images/searching_satu_odp.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	

<tr> 
<a href="../admin/project/dava/searching_sto.php" target="tengah_bawah"><img src="../images/searching_odc_odp_dlm_sto.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	

<tr> 
<a href="../admin/project/dava/register_odp_validated.php" target="tengah_bawah"><img src="../images/register_odp_validated.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>
	
<tr> 
<a href="../admin/project/dava/monitoring_odp_validated.php" target="tengah_bawah"><img src="../images/monitoring_odp_validated.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>

<tr> 
<a href="../admin/project/dava/monitoring_odp_validated_witel.php" target="tengah_bawah">PROGRESS_ALL</a><br>
</tr>

<tr> 
<a href="../admin/project/dava/pilih_tanggal.php" target="tengah_bawah">PROGRESS_HARIAN</a><br>
</tr>

<tr> 
<a href="../admin/project/dava/searching_graph_witel.php" target="tengah_bawah">PROGRESS_WITEL</a><br>
</tr>

<tr> 
<a href="../admin/project/dava/odp_searching.php" target="tengah_bawah">SEARCHING-ODC/ODP</a><br>
</tr>

</table>

