<?php

set_time_limit(1200);

$lat = array();
$lng = array();

if (($handle = fopen("latlng.csv", "r")) !== FALSE) {
while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) { //fetch fields row by row from csv 
$num = count($data);                                      //number of fields in each row
for ($c=0; $c < $num; $c++) {
    // echo $data[$c] . "<br />\n";                              //prints each fields(data)
    if ($c % 2 == 0) {
        $lat[] = $data[$c];
    }else{
        $lng[] = $data[$c];
    }
}
}
$count = count($lat);
for ($i=0; $i < $count; $i++) { 
    $response = file_get_contents("http://192.168.43.247/mytools/android/get_multiple_distance_mytools.php?lat=".$lat[$i]."&lng=".$lng[$i]);
    echo $response;
}

fclose($handle);
}
// print_r ($lat);


?>