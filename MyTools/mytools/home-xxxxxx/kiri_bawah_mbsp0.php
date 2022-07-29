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
[Data Service(FTP)]
</div>
</tr>	

<tr> 
<a href="../admin/project/mbsp/rekap_data_service_ftp_per_witel.php" target="tengah_bawah">Rekap Service(FTP)</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap_service_number_begin_with_zero.php" target="tengah_bawah">Service_Number begin =0</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap_service_number_begin_not_zero.php" target="tengah_bawah">Service_Number begin !=0</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap_service_useful.php" target="tengah_bawah">Service Useful</a><br><br>
</tr>


<tr>
<div>	 
[DATA MBSP DIRKONS]
</div>
</tr>	





<!--- ODP KANOSS --->

<tr> 
<a href="../admin/scripts/uploadfile2/uploadfile_client_databaseserver1.php" target="tengah_bawah"><font color="red">UPLOAD DATA MBSP</font></a><br>
</tr>	 


<tr> 
<a href="../admin/project/mbsp/mbsp_upload_list.php" target="tengah_bawah">DATA MBSP LIST</a><br>
</tr> 


<tr> 
<a href="../admin/project/mbsp/mbsp1_per_witel.php" target="tengah_bawah">DATA MBSP-1</a><br>
</tr>


<tr> 
<a href="../admin/project/mbsp/mbsp2_per_witel.php" target="tengah_bawah">DATA MBSP-2</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/mbsp_officecode_sto_witel.php" target="tengah_bawah">MBSP_officecode_sto_witel</a><br><BR>
</tr>


[DATA POTENSI MBSP]

<br>
<tr> 
<a href="../admin/project/mbsp/mbsp_notel_sto_witel_list1.php" target="tengah_bawah" title="STP_TARGET IS NOT NULL">DATA MBSP LIST1</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/mbsp_notel_sto_witel_list2.php" target="tengah_bawah" title="STP_TARGET IS NULL">DATA MBSP LIST2</a><br>
</tr>


<tr> 
<a href="../admin/project/mbsp/mbsp_notel_sto_witel_list3.php" target="tengah_bawah" title="STP_TARGET IS ODP">DATA MBSP LIST3</a><br><BR>
</tr>

DATA KANDIDAT MBSP:


<tr> 
<a href="../admin/project/mbsp/rekap1_kandidat_mbsp.php" target="tengah_bawah" title="xxxx">REK1 KANDIDAT MBSP</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap2_kandidat_mbsp.php" target="tengah_bawah" title="xxxx">REK2 KANDIDAT MBSP</a><br>
</tr>



<br>
DATA REKAP MBSP:
<tr> 
<a href="../admin/project/mbsp/result_mbsp.php" target="tengah_bawah" title="STP_TARGET IS ODP">RESULT MBSP</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap1_mbsp.php" target="tengah_bawah" title="STP_TARGET IS ODP">REKAP1 MBSP</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/rekap2_mbsp.php" target="tengah_bawah" title="STP_TARGET IS ODP">REKAP2 MBSP</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/searching_sp_target.php" target="tengah_bawah" title="STP_TARGET IS ODP">SEARCHING GPON</a><br>
</tr>

<tr> 
<a href="../admin/project/mbsp/searching_mbsp.php" target="tengah_bawah" title="STP_TARGET IS ODP">SEARCHING DATA_MBSP</a><br>
</tr>

<br><br>




