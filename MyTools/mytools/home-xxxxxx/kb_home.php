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

<a href="../data_rekap_treg.php" target="tengah_bawah">Data Rekap Treg</a><br>
<!--- 
<a href="../data_rekap_witel_total.php" target="tengah_bawah">Data Rekap Witel [total]</a><br>
<a href="../data_rekap_witel_kendala.php" target="tengah_bawah">Data Rekap Witel [kendala]</a><br>
 --->
<a href="../data_mytools_list.php" target="tengah_bawah">Data List Detail</a><br>
<a href="../data_rekap_teknisi_tanggal.php" target="tengah_bawah" title="Click Header (USERID atau TANGGAL)PADA DATA SEBELAH KANAN">Data List Sort By</a><br>
<a href="../data_mytools_rekap_produktivitas.php" target="tengah_bawah">Data Pencapaian Teknisi</a><br>
<a href="../data_mytools_produktivitas_perhari.php" target="tengah_bawah" >Data Produktivitas per hari</a><br>
<a href="../data_mytools_kendala.php" target="tengah_bawah" >Data Rekap Kendala</a><br>




</table>
