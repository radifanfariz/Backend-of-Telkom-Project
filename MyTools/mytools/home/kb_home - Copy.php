<?php
	session_start();
    //$_SESSION["uname"] = "test1";

	//$_SESSION[login0] = $_POST[login];
	//echo $_SESSION[login0]."<br>";
	
	//$_SESSION[password0] = $_POST[password];
	
	//echo $_SESSION[nama0]."<br>";


$timezone = "Asia/Jakarta";
if(function_exists('date_default_timezone_set')) date_default_timezone_set($timezone);
//echo date('d-m-Y H:i:s');
?>


<body bgcolor="#808000">

	<?php
	
	print "<b>". "Medan, " .date("Y-m-d")."</b>"."<br>"."<br>"; 

	//if($c_profile0==null)   
	if(isset($_SESSION['c_profile0']) && !empty($_SESSION['c_profile0'])) {
   		echo "<br>"."Welcome: ".$_SESSION['nama0']."<BR>";
	}
	else{

	}
	
	// if($_SESSION['c_profile0']==null)   
	// {
	// //include "login.html";
	// //print "<br>";
	// }
	// else
	// {
	// //print "c_profile0 = ".$_SESSION[c_profile0]."<br>";
	// print "<br>"."Welcome: ".$_SESSION['nama0']."<BR>";
	// //PRINT "<a href=logout.php>Logout</a>";
	// }
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
<a href="under_construction.php" target="tengah_bawah"> <img src="../images/hotnews.jpg" alt="" width="160" height="22" border="0"></a>
</div>
</tr>	


<tr>
<div> 
<a href="under_construction.php" target="tengah_bawah"><img src="../images/changepassword.jpg" alt="" width="160" height="22" border="0"></a>
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
IN-BOX HD SALESFORCE :<BR>
<a href="../_sales_mytools_rekap_witel_all.php" target="tengah_bawah" >01._Rekap Data Sales per Witel</a><br>
<a href="../_sales_tanggal_witel.php" target="tengah_bawah" >02._Rekap Data Sales Selected </a><br>
<a href="../_sales_witel_salesID.php" target="tengah_bawah" >03._Rekap Data Sales SalesID</a><br>
<a href="../_data_mytools_detail.php" target="tengah_bawah" >04._Data Sales Detail-all</a><br>
<a href="../_pilih_tanggal_list.php" target="tengah_bawah">05._Data Sales Detail Selected</a><br><br>

IN-BOX HD PROVISIONING :<br>
<a href="../_tech_witel_userID.php" target="tengah_bawah" >01._Rekap Data Prov</a><br>
<a href="../_tech_mytools_detail.php" target="tengah_bawah" >02._Data Prov Detail-all</a><br>
<a href="../_tech_tanggal_witel.php" target="tengah_bawah" >02._Data Prov Detail Selected</a><br><br>



IN-BOX HD DAMAN :<BR>
<a href="../_daman_mytools_detail.php" target="tengah_bawah" >01._Data_List_All</a><br>
<a href="../_daman_tanggal_witel.php" target="tengah_bawah" >02._Data_Selected</a><br><br>






IN-BOX HD BILL-CO :<br>
<a href="../_data_mytools_detail.php" target="tengah_bawah" >01._LatLng Rumah</a><br>
<a href="../_kendala_teknis_witel.php" target="tengah_bawah" >02._Status_Photo_ONT</a><br><BR>

</table>



<table>
DASHBOARD :<BR>
<a href="../data_mytools_rekap_witel_all.php" target="tengah_bawah" >01.Data Rekap Witel [all]</a><br>
<a href="../pilih_tanggal_rekap_witel.php" target="tengah_bawah" >02.Data Rekap Witel</a><br>
<a href="../pilih_tanggal_list.php" target="tengah_bawah">03.Data List Detail</a><br>
<a href="../pilih_tanggal_check_doeble.php" target="tengah_bawah">04.Check Data Unik / Doeble</a><br>
<a href="../pilih_tanggal_pencapaian_teknisi.php" target="tengah_bawah">05.Data Pencapaian Teknisi</a><br>
<a href="../pilih_tanggal_produktivitas_teknisi_perhari.php" target="tengah_bawah">06.Data Produktivitas Teknisi per hari</a><br>
<a href="../pilih_tanggal_rekap_kendala.php" target="tengah_bawah" >07.Data Rekap Kendala</a><br>
<a href="../pilih_tanggal_check_distance.php" target="tengah_bawah" >08.Checking Distance coordinate</a><br>
<a href="../pilih_tanggal_produktivitas_teknisi.php" target="tengah_bawah" >09.Data Pruduktivitas [Graph]</a><br>
</table><br><br>