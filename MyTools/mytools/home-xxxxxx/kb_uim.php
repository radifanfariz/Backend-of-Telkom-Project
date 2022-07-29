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

<tr> 
<a href="kb_odp.php"><img src="../images/data_odp.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	 

<tr> 
<a href="kb_data_service.php"><img src="../images/data_service.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	 

<tr> 
<a href="kb_inbox_si.php"><img src="../images/inbox_si.jpg" alt="" width="159" height="16" border="0"></a><br>
</tr>	 

<tr> 
<a href="../admin/project/dp_odp_overlay/dp_odp_overlay_rekap1.php" target="tengah_bawah">DP_ODP_Overlay1</a><br>
</tr>	

<tr> 
<a href="../admin/project/dp_odp_overlay/dp_odp_overlay_rekap2.php" target="tengah_bawah">DP_ODP_Overlay2</a><br>
</tr>	


<tr> 
<a href="../admin/project/dp_odp_overlay/searching.php" target="tengah_bawah">DP_ODP_Overlay_Search</a><br>
</tr>	 

<tr> 
<a href="../admin/project/dp_odp_overlay/servnum_odp_overlay1.php" target="tengah_bawah">ServNum_ODP_Overlay1</a><br>
</tr>	 

<tr> 
<a href="../admin/project/dp_odp_overlay/servnum_odp_overlay2.php" target="tengah_bawah">ServNum_ODP_Overlay2</a><br>
</tr>	 

<tr> 
<a href="../admin/project/dp_odp_overlay/searching_service_number.php" target="tengah_bawah">ServNum_ODP_Overlay_Search</a><br>
</tr>	

</table>

