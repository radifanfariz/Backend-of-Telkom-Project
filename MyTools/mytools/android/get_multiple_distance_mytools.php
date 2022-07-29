<?php

/////////////////INPUT////////////////
// $origin=$_GET['origin'];
// $destination=$_GET['destination'];
// $origin = explode(",",$origin);
// $destination = explode(",",$destination);
// $lat1 = $origin[0];
// $lng1 = $origin[1];
// $lat2 = $destination[0];
// $lng2 = $destination[1];
// $json = array();
// $i = 0;

$filter = 0.2;


//////////DB CONNECT///////////////////
require_once '_dbDetails.php';
$con = mysqli_connect(HOST, USER, PASS, DB);

////////////////////////DISTANCE FROM DB//////////////////////////////
if (mysqli_connect_errno()) {
    echo "Failed to connect MySQL: " . mysqli_connect_error();
}
      $query = mysqli_query($con, "

select latitude_inst_addr, longitude_inst_addr, latitude_odp, longitude_odp, 
(6378 * acos( cos( radians(latitude_inst_addr) ) * cos( radians( latitude_odp) ) * 
cos( radians( longitude_odp) - RADIANS(longitude_inst_addr) ) + sin( RADIANS(latitude_inst_addr) ) * sin( radians( latitude_odp) ) ) ) 
AS distance
FROM t_sales_force
where 
distance < $filter");

////////////DISTANCE////////////////////

// $pre_distance_rad = (6378 * acos(cos(deg2rad($lat1)) * cos(deg2rad($lat2))
//  * cos(deg2rad($lng2) - deg2rad($lng1)) + sin(deg2rad($lat1)) * sin(deg2rad($lat2))));

 
/////////////////DISTANCE ODO///////////////////////
while ($row = mysqli_fetch_array($query)){
/////////////////FOR CSV VARIABLE/////////////////
// $originLat = $lat1;
// $originLong = $lng1;
// $destinationLat = $lat2;
// $destinationLong = $lng2;
///////////////////////////////////////////////////
$originLat = $row['latitude_inst_addr'];
$originLong = $row['longitude_inst_addr'];
$destinationLat = $row['latitude_odp'];
$destinationLong = $row['longitude_odp'];
$apiKey = "AIzaSyB3yxjLArhmbgL1rSexzc-zp2FX3_x8ZFA";
// $response = file_get_contents("https://maps.googleapis.com/maps/api/directions/json?origin=".$originLat.",".$originLong."&destination=".$destinationLat.",".$destinationLong."&key=".$apiKey);
$ch =  curl_init("https://maps.googleapis.com/maps/api/directions/json?origin=".$originLat.",".$originLong."&destination=".$destinationLat.",".$destinationLong."&key=".$apiKey);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
curl_setopt($ch, CURLOPT_TIMEOUT, 3);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept: application/json'));
$response = curl_exec($ch);
$direction = json_decode($response);
/////////////////FOR CSV VARIABLE/////////////////
// $distance_rad = round($pre_distance_rad,2)." km";
///////////////////////////////////////////////////
$distance_rad = round($row['distance'],2)." km";
$distance_odo = $direction->routes[0]->legs[0]->distance->text;
$addr_origin = $direction->routes[0]->legs[0]->start_address;
$addr_destination = $direction->routes[0]->legs[0]->end_address;

// $json += array("distance_rad".$i++ => $distance_rad);
// $json += array("distance_odo".$i++ => $distance_odo); 
echo "Distance RAD :".$distance_rad."<br>";
echo "Distance ODO :".$distance_odo."<br>";
echo "Origin Lat :".$originLat."<br>";
echo "Origin Long :".$originLong."<br>";
echo "Destination Lat :".$destinationLat."<br>";
echo "Destination Long :".$destinationLong."<br>";
echo "Origin Address :".$addr_origin."<br>";
echo "Destination Address :".$addr_destination."<br>";

echo "<br>";

// $json =  json_encode($json);
// echo $json."<br>";
}


?>