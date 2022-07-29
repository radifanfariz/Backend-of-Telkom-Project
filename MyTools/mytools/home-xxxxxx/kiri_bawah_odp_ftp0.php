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
ODP FROM T_FTP1
</div>
</tr>	
<p>




<!--- ODP KANOSS --->

<tr> 
<a href="../admin/scripts/uploadfile2/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">UPLOAD ODP</font></a><br>
</tr>	 

<tr> 
<a href="../admin/project/odp_ftp/ftp_monitoring_odp_list.php" target="tengah_bawah">ODP_FTP_LIST</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/ftp_odp_per_witel.php" target="tengah_bawah">ODP_LIST</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/ftp_odp_per_witel_kapasitas.php" target="tengah_bawah"><font color="blue">ODP_KAPASITAS</font></a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/ftp_odp_per_witel_golive.php" target="tengah_bawah">ODP_GOLIVE</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/odp_golive_occ_per_witel.php" target="tengah_bawah">ODP_GOLIVE_(OCC)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/odp_all_occ_per_witel.php" target="tengah_bawah">ODP_ALL_(OCC)</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/odp_used_null_per_witel.php" target="tengah_bawah">ODP_USED_NULL</a><br>
</tr>

<tr> 
<a href="../admin/project/odp_ftp/odp_golive_used_null_per_witel.php" target="tengah_bawah">ODP_GOLIVE_USED_NULL</a><br>
</tr>


<tr> 
<a href="../admin/project/odp_ftp/odp_Occ_NullBroken_per_witel.php" target="tengah_bawah"><font color="black">ODP_NULL_BUT_BROKEN</font></a><br>
</tr>	


<tr> 
<a href="../admin/project/odp_ftp/insert_into_t_odp_null_ftp_confirmation.php" target="tengah_bawah">INSERT_INTO</a><br>
</tr>


 

<br><br>




