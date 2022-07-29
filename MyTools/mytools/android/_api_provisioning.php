<?php
	    //   $param_idx=$_POST['idx'];
		 //$param_idx = '1' ;
		 if(isset($_GET['idx'])){
			 $param_idx = $_GET['idx'];
		 }else{
			$param_idx=$_POST['idx']; 
		 }
?>


<?php 
	//database constants
	// define('DB_HOST', 'localhost');
	// define('DB_USER', 'root');
	// define('DB_PASS', '');
	// define('DB_NAME', 'db_mytools');

	require_once '_dbDetails.php';
	
	//connecting to database and getting the connection object
	$conn = new mysqli(HOST, USER, PASS, DB);
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("
SELECT 
	a.idx, 
	a.witel, 
	cust_name, 
	cust_addr, 
	google_addr,
	inst_addr,
	stp_name,
	stp_panel,
	stp_port,
	myir_sc,
	internet_number,
	phone_number,
	latitude_odp, 
	longitude_odp, 
	latitude_inst_addr, 
	longitude_inst_addr, 
	url, 
	url2,
	url3, 
	url4,  
	url5,  
	url6,
	hp, 
	email,
	barcode_result,
	barcode_dw,
	barcode_port,
	barcode_sn,
	kendala_teknis,
	kendala_nonteknis,
	status_prov,
	b.nama AS nama,
	user_id,
    c.nama AS nama,
	user_id2,
	packet_indihome,
	alt_addr,
	no_sc,
	distance_rad,
	distance_odo,
	username_tg_sf,
	username_tg_tech,
	hp,
	alt_hp,
	keterangan_kendala,
	ket1,
	ket2,
	pdf_url
	FROM 
	(SELECT * FROM t_sales_force_mytools) AS a
	LEFT JOIN
	(SELECT * FROM t_user_mobile) AS b
	ON a.user_id = b.userid
	LEFT JOIN
	(SELECT * FROM t_user_mobile) AS c
	ON a.user_id2 = c.userid
	WHERE a.idx =$param_idx
	
	;");
		
	
	
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($idx, 
	$witel, 
	$cust_name, 
	$cust_addr, 
	$google_addr, 
	$inst_addr, 
	$stp_name,
	$stp_panel,
	$stp_port,
	$myir_sc,
	$internet_number,
	$phone_number,
	$latitude_odp, 
	$longitude_odp, 
	$latitude_inst_addr, 
	$longitude_inst_addr, 
	$url, 
	$url2,
	$url3, 
	$url4, 
	$url5, 
	$url6, 
	$hp, 
	$email, 
	$barcode_result,
	$barcode_dw,
	$barcode_port,
	$barcode_sn,
	$k_teknis,
	$k_nonteknis,
	$status_prov,
	$namasf,
	$nosf,
	$namatech,
	$notech,
	$packet_indihome,
	$alt_addr,
	$no_sc,
	$distance_rad,
	$distance_odo,
	$user_tg_sf,
	$user_tg_tech,
	$nohp,
	$alt_nohp,
	$kend_desc,
	$ket1,
	$ket2,
	$pdf_url);
	
	
	
	//$stmt->bind_result($idx, $cust_name, $inst_addr, $hp, $packet_indihome);
	
	
	$products = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){
		$temp = array();
		$temp['idx'] = $idx; 
		$temp['witel'] = $witel;
		$temp['cust_name'] = $cust_name; 
		$temp['cust_addr'] = $cust_addr; //Neww add
		$temp['google_addr'] = $google_addr; 
		$temp['inst_addr'] = $inst_addr; 
		$temp['stp_name'] = $stp_name; 
		$temp['stp_panel'] = $stp_panel; 
		$temp['stp_port'] = $stp_port; 
		
		$temp['myir_sc'] = $myir_sc; 
		$temp['internet_number'] = $internet_number; 
		$temp['phone_number'] = $phone_number; 
		
		$temp['latitude_odp'] = $latitude_odp;
		$temp['longitude_odp'] = $longitude_odp;
		$temp['latitude_inst_addr'] = $latitude_inst_addr;
		$temp['longitude_inst_addr'] = $longitude_inst_addr;
		$temp['url'] = $url; 
		$temp['url2'] = $url2; 
		$temp['url3'] = $url3; 
		$temp['url4'] = $url4; 
		$temp['url5'] = $url5; 
		$temp['url6'] = $url6; 
		$temp['hp'] = $hp; 
		$temp['email'] = $email; 
		$temp['barcode_result'] = $barcode_result; 
		$temp['barcode_dw'] = $barcode_dw; 
		$temp['barcode_port'] = $barcode_port; 
		$temp['barcode_sn'] = $barcode_sn; 
		$temp['k_teknis'] = $k_teknis;
		$temp['k_nonteknis'] = $k_nonteknis;  
		
		$temp['status_prov'] = $status_prov;  
		$temp['namasf'] = $namasf;
		$temp['nosf'] = $nosf;
		$temp['namatech'] = $namatech;
		$temp['notech'] = $notech;      
		$temp['packet_indihome'] = $packet_indihome;
		$temp['alt_addr'] = $alt_addr;
		$temp['no_sc'] = $no_sc;
		$temp['rad'] = $distance_rad;
		$temp['odo'] = $distance_odo; 
		$temp['username_tg_sf'] = $user_tg_sf;
		$temp['username_tg_tech'] = $user_tg_tech; 
		$temp['nohp'] = $nohp;
		$temp['alt_nohp'] = $alt_nohp;
		$temp['kend_desc'] = $kend_desc;
		$temp['ket1'] = $ket1;
		$temp['ket2'] = $ket2;
		$temp['pdf_url'] = $pdf_url;
		array_push($products, $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
	?>