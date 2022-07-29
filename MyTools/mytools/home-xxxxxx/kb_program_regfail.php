

<?php
$timezone = "Asia/Jakarta";
if(function_exists('date_default_timezone_set')) date_default_timezone_set($timezone);
//echo date('d-m-Y H:i:s');
?>



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

	


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  	body{
  		background-color: #FFC1A4; /* COLOR LEFT MENU =  #f1f1f1 */
  		font-family: Helvetica;
  	}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;

    }
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      height: auto;
      font-size: 12px;
    }
    #menu li ul {
      display:none;
    }
    #menu li:hover > ul {
      display:block;
    }
	 /* Dropdown Button */
.dropbtn {
    background-color: #C1FFE0; /* COLOR ICON MAIN MENU =  #f1f1f1 */
    color: BLACK;				/* COLOR TULISAN MAIN MENU =  GREEN */
    padding: 1px;
    font-size: 12px;
    cursor: pointer;
    min-width: 220px;
    min-height: 2px;
    box-shadow:0 2px 5px 0 rgba(0,0,0,0.16)
}
/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown2 {
    position: relative;
}
/* Dropdown Content (Hidden by Default) */
.dropdown-content{
    display: none;
    position: relative;
    background-color: WHITE; 	/* BACHGROUND COLOR ANAK MAIN MENU = WHITE */
    min-width: 180px;
    min-height: 2px;
    box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.3);
    z-index: 1;
}
.dropdown-content2{
  display: none;
  background-color: #C6FFC6; /* CLOR BACKGROUND MENU LAYAR DUA = #C0C0C0 */
  min-width: 180px;
  min-height: 2px;
  box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.3);
  z-index: 1;
  position:absolute;
  right:0%; /*MENU DROPDOWN VERTIKAL */
  top:0;
  border-top: 1px solid black;
}

/* Links inside the dropdown */
.dropdown-content a , .dropdown-content2 a{
    color: black;									/* MENU TULISAN LAYAR SATU COLOR = BLACK */
    padding: 1px 1px;
    display: block;
    border-bottom: 1px solid black;
}
/* Change color of dropdown links on hover */
.dropdown-content a:hover {
  background-color: white; 
}

.dropdown-content2 a:hover {
  background-color: #FFC4C4; /* colors geser kanan */
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown2:hover .dropdown-content2 {
    display: block;
    left:50%; /*MENU DROPDOWN VERTIKAL GESER KANAN */
    visibility:visible;
    opacity:1;
    transform: translateX(0px);
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: yellow;  /* colors MAIN MENU jika CURSOR HANDOVER */
}

.dropdown2:hover .dropbtn2 {
    background-color: orange;
}
  </style>
</head>


<body>


<div class="container-fluid text-left">    
  <div class="row-content">
	    <div class="col-sm-0 sidenav">
		
		


  <font color="blue" size="+0" face="Arial"><B>MENU RECOVERY:</B></font><BR>
  <font color="black" size="+0" face="Arial"><B>REGFAIL SIP ONT OGFFILE</B></font><BR>
  
  
  
  <!--- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX --->
  
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/list.php" target="tengah_bawah">1. LIST SIP REGFAIL</a></button>
  </div><br>
  
  
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/regfail_per_witel_all.php" target="tengah_bawah">2. REGFAIL_PER_WITEL_ALL</a></button>
  </div><br>
  
  
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/register_ont_recovered.php" target="tengah_bawah">3. LAPORAN_SIP_ONT_RECOVERED</a></button>
  </div><br>
  
  
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_list_all.php" target="tengah_bawah">4. RECOVERED_ONT_LIST_ALL</a></button>
  </div><br>
   
   
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_per_witel.php" target="tengah_bawah">5. RECOVERED_ONT_PER_WITEL</a></button>
  </div><br>
  
  
    
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/regfail_searching.php" target="tengah_bawah">6. SEARCHING_PHONE_REGFAIL</a></button>
  </div><br>
  
  
    
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/regfail_searching_service.php" target="tengah_bawah">7. SEARCHING_PHONE_SERVICE</a></button>
  </div><br>  
   
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/dropdown_witel.php" target="tengah_bawah">8. SORT_PER_WITEL_ADDRESS</a></button>
  </div><br>  
  
  
  <div class="dropdown">
  <button class="dropbtn"><a href="../admin/project/regfail_sip_ont_offline/status_ont.php" target="tengah_bawah">9. status_ont</a></button>
  </div><br>  

    

 
  
    <div class="dropdown">
  <button class="dropbtn">10. Update Data Recovery Regfail</button>
  <div class="dropdown-content">
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=ACEH" target="tengah_bawah">ACEH</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=BABEL" target="tengah_bawah">BABEL</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=BENGKULU" target="tengah_bawah">BENGKULU</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=JAMBI" target="tengah_bawah">JAMBI</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=LAMPUNG" target="tengah_bawah">LAMPUNG</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=MEDAN" target="tengah_bawah">MEDAN</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=RIDAR" target="tengah_bawah">RIDAR</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=RIKEP" target="tengah_bawah">RIKEP</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=SUMBAR" target="tengah_bawah">SUMBAR</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=SUMSEL" target="tengah_bawah">SUMSEL</a><br>
    <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_witel.php?witel=SUMUT" target="tengah_bawah">SUMUT</a><br>

  </div>
</div> 
	
	    
  <div class="dropdown">
  <button class="dropbtn">
  <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_per_witel_rekap.php" target="tengah_bawah">11. GRAPH-1 PER WITEL</a></button>
  </div><br>  
  
 <div class="dropdown">
  <button class="dropbtn">
  <a href="../admin/project/regfail_sip_ont_offline/recovery_regfail_per_witel_rekap_.php" target="tengah_bawah">12. GRAPH-2 PER WITEL</a></button>
  </div><br>  
	
	
 <div class="dropdown">
  <button class="dropbtn">
  <a href="../admin/project/regfail_sip_ont_offline/graph_harian.php" target="tengah_bawah">13. PROGRESS HARIAN</a></button>
  </div><br>  
	
	
	 <div class="dropdown">
  <button class="dropbtn">
  <a href="../admin/project/regfail_sip_ont_offline/unrecovered_regfail_per_witel_all_ver_live3.php" target="tengah_bawah">14. UNRECOVERED</a></button>
  </div><br>  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
    </div>
    </div>
  </div>
</div>





  
  

	
	
	
</body>
</html>

