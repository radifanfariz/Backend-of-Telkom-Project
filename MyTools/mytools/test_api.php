<?php

$originLat = "3.557";
$originLong = "98.645";
$destinationLat = "3.556";
$destinationLong = "98.646";
$apiKey = "AIzaSyAmX8akgpyhr76Vg8M18I8ZFlTQCtXd1EY";
$response = file_get_contents("https://maps.googleapis.com/maps/api/directions/json?origin=".$originLat.",".$originLong."&destination=".$destinationLat.",".$destinationLong."&key=".$apiKey);
$direction = json_decode($response);
$test_data = var_dump($direction->routes[0]->overview_polyline->points);
$distance_odo = $direction->routes[0]->legs[0]->distance->text;
$routes_line = $direction->routes[0]->overview_polyline->points;
echo $routes_line;
?>
