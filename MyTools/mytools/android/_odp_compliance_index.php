
<?php

		$no=0;
        $lat1=$_POST['lat'];
		$lgt1=$_POST['long'];
		$filter=$_POST['filter'];
		// $no=0;
        // $lat1="3.597031";
		// $lgt1="98.678513";
		// $filter="1";

?>


<?php
/*
	    $no=0;
        $lat1=3.59282;
		$lgt1=98.677655;
		$filter=0.2;
*/
?>


<?php 
	// $server		= "localhost"; // adjust the server name
	// $user		= "root"; // adjust the username
	// $password	= ""; // adjust the password
	// $database	= "db_mytools"; // adjust the target databese
	// //$database	= "db_mytools"; // adjust the target databese
	require_once '_dbDetails.php';
	
	
	$con = mysqli_connect(HOST, USER, PASS, DB);
?>



<?php

	if (mysqli_connect_errno()) {
		echo "Failed to connect MySQL: " . mysqli_connect_error();
	}
	  	$query = mysqli_query($con, "
	
	select pd_name, latitude, longitude, is_total, is_service, is_avai, 
	(6378 * acos( cos( radians($lat1) ) * cos( radians( latitude) ) * 
	cos( radians( longitude) - RADIANS($lgt1) ) + sin( RADIANS($lat1) ) * sin( radians( latitude) ) ) ) 
	AS distance
	FROM t_odp_compliance
	where 
	(
	(6378 * acos( cos( radians($lat1) ) * cos( radians( latitude) ) * 
	cos( radians( longitude) - RADIANS($lgt1) ) + sin( RADIANS($lat1) ) * sin( radians( latitude) ) ) ) 
	) < $filter
		
		");
		
		$json = '0';
		$json = '{"odp": [';
		while ($row = mysqli_fetch_array($query)){
		//$distance=distance*1000;

		// quotation marks (") are not allowed by the json string, we will replace it with the` character
		// strip_tag serves to remove html tags on strings

		$originLat = $lat1;
		$originLong = $lgt1;
		$destinationLat = $row['latitude'];
		$destinationLong = $row['longitude'];
		$apiKey = "AIzaSyAmX8akgpyhr76Vg8M18I8ZFlTQCtXd1EY";
		// $response = file_get_contents("https://maps.googleapis.com/maps/api/directions/json?origin=".$originLat.",".$originLong."&destination=".$destinationLat.",".$destinationLong."&key=".$apiKey);
		// $direction = json_decode($response);
		// $distance_odo = $direction->routes[0]->legs[0]->distance->text;
		// $routes_line = $direction->routes[0]->overview_polyline->points;

		////////////////////////
		// "distance_odo":"'.str_replace($char,'`',strip_tags($distance_odo)).'",
		// "routes_line":"'.str_replace($char,'`',strip_tags($routes_line)).'",

		$char ='"';

		$json .= 
		'{
			"nama_odp":"'.str_replace($char,'`',strip_tags($row['pd_name'])).'",
			"distance":"'.str_replace($char,'`',strip_tags($row['distance'])).'",
			"lat":"'.str_replace($char,'`',strip_tags($row['latitude'])).'",
			"lng":"'.str_replace($char,'`',strip_tags($row['longitude'])).'",
			"total":"'.str_replace($char,'`',strip_tags($row['is_total'])).'",
			"service":"'.str_replace($char,'`',strip_tags($row['is_service'])).'",
			"avai":"'.str_replace($char,'`',strip_tags($row['is_avai'])).'"
		},';
	}

	// omitted commas at the end of the array
	$json = substr($json,0,strlen($json)-1);

	$json .= ']}';

	// print json
	echo $json;
	
	mysqli_close($con);
	
?>
