<?php

//Not Running
//$name1=$_GET['cust_name'];
//$address1=$_GET['inst_addr'];

?>


<?php
//Faiz
//Running well
$name1=$_POST['name'];
$address1=$_POST['address'];
$no_sc1=$_POST['nomor_sc'];
?>

<?php
//Running well
//$name1='Medium';
//$address1='Tata Alam';
?>


<?php 
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASS', '');
	define('DB_NAME', 'db_mytools');
	
	
	//connecting to database and getting the connection object
	$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	
	//Checking if any error occured while connecting
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
		die();
	}
	
	//creating a query
	$stmt = $conn->prepare("SELECT idx, 
	cust_name, 
		inst_addr, 
	google_addr, 
	url, 
	hp, 
	packet_indihome,
	latitude_inst_addr,
	longitude_inst_addr 
	FROM t_sales_force_mytools
	where (cust_name like '%$name1%' 
	AND inst_addr like '%$address1%' AND no_sc like '%$no_sc1%') 
	");

		
	
	//executing the query 
	$stmt->execute();
	
	//binding results to the query 
	$stmt->bind_result($idx, 
	$cust_name, 
	$inst_addr, 
	$google_addr, 
	$url2, 
	$hp, 
	$packet_indihome,
	$lat,
	$lng);

	
	
	$products = array(); 
	
	//traversing through all the result 
	while($stmt->fetch()){
		$temp = array();
		$temp['idx'] = $idx; 
		$temp['cust_name'] = $cust_name; 
		$temp['inst_addr'] = $inst_addr; 
		$temp['google_addr'] = $google_addr; 
		$temp['url2'] = $url2; 
		$temp['hp'] = $hp; 
		$temp['packet_indihome'] = $packet_indihome; 
		$temp['lat'] = $lat; 
		$temp['lng'] = $lng; 
		array_push($products, $temp);
	}
	
	//displaying the result in json format 
	echo json_encode($products);
	
	?>