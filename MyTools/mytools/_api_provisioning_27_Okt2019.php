<?php
	      //$param_idx=$_POST['idx'];
		 $param_idx = '1' ;
?>


<?php 
	//database constants
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASS', '@$^talikom!#%');
	define('DB_NAME', 'db_mytools');
	
	//connecting to database and getting the connection object
	$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	
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
	kendala_teknis,
	kendala_nonteknis,
	b.nama AS nama,
	user_id,
    c.nama AS nama,
	user_id2,
	packet_indihome
	FROM 
	(SELECT * FROM t_sales_force) AS a
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
	$k_teknis,
	$k_nonteknis,
	$namasf,
	$nosf,
	$namatech,
	$notech,
	$packet_indihome);
	
	
	
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
		$temp['k_teknis'] = $k_teknis;
		$temp['k_nonteknis'] = $k_nonteknis;  
		$temp['namasf'] = $namasf;
		$temp['nosf'] = $nosf;
		$temp['namatech'] = $namatech;
		$temp['notech'] = $notech;      
		$temp['packet_indihome'] = $packet_indihome; 
		array_push($products, $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
	?>