<?php

	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
    $aSQL = "SELECT pass from t_user_mobile where userid = '8116091965' ";
    $aQResult=mysqli_query($conn, $aSQL);

	$id =$_POST['id'];
	$witel =$_POST['witel'];
	$serviceid =$_POST['serviceid'];
	
	$customer_name = $_POST['customer_name'];
	$customer_address = $_POST['customer_address'];
	$installation_address = $_POST['installation_address'];
	
	// $lat =$_POST['lat'];
	// $lgt =$_POST['lgt'];
	
	
	$service_type =$_POST['service_type'];
	$connectivity_type =$_POST['connectivity_type'];
	$astinet_type =$_POST['astinet_type'];
	
	$nte_type =$_POST['nte_type'];
	$nte_model =$_POST['nte_model'];
	$nte_sn =$_POST['nte_sn'];
	$nte_uplink_port =$_POST['nte_uplink_port'];
	
	
	$stp_type =$_POST['stp_type'];
	$stp_locn =$_POST['stp_locn'];
	$stp_name =$_POST['stp_name'];
	$stp_panel =$_POST['stp_panel'];
	$stp_port =$_POST['stp_port'];
	$stp_port_uim =$_POST['stp_port_uim'];
	
	
	$ce_type =$_POST['ce_type'];
	$catatan =$_POST['catatan'];
	$validating =$_POST['validating'];
	
	
	$confirm =$_POST['confirm'];
	$keyword2 = md5($_POST['keyword']);
	
	
    // print "stp_port=".$_POST['stp_port']."<br>";
	print "validating=".$_POST['validating']."<br>";
	
	print "id=".$_POST['id']."<br>";
	//print "confirm=".$_POST[confirm]."<br>";
	//print "keyword=".$_POST[keyword]."<br>";
	//print "keyword2=".$keyword2."<br>";

   // include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   // $aSQL = "SELECT pass from t_user_mobile where userid = '8116091965' ";
   // $aQResult=mysqli_query($conn, $aSQL);
		$pass = "";
       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
	   $pass = $aRow["pass"];
	   //print "pass=".$pass."<br>";
       }
       mysqli_free_result($aQResult);
       
   //if( ($_POST[confirm]=="yes") and ($keyword2==$pass)	)


	if($keyword2 = $pass){
		print "OKE";
	  	$strSQL = "UPDATE t_datek_bgest set witel='".$witel."',
	  	serviceid='".$serviceid."',
		customer_name='".$customer_name."',
		customer_address='".$customer_address."',
		installation_address='".$installation_address."',
		service_type='".$service_type."',
		connectivity_type='".$connectivity_type."',
		astinet_type='".$astinet_type."',
		nte_type='".$nte_type."',
		nte_model='".$nte_model."',
		nte_sn='".$nte_sn."',
		nte_uplink_port='".$nte_uplink_port."',
		stp_type='".$stp_type."',
		stp_locn='".$stp_locn."',
		stp_name='".$stp_name."',
		stp_panel='".$stp_panel."',
		stp_port='".$stp_port."',
	    stp_port_uim='".$stp_port_uim."',
		ce_type='".$ce_type."',
		catatan ='".$catatan."', 
		validating ='".$validating."' 
		where id='".$id."';";
		//echo $strSQL;
		$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
	}
	else
	{
		print "Your Keyword is wrong...";
	}
	//end if;
	
?>
