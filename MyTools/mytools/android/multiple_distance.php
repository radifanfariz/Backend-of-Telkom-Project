<?php
$lat = array();
$lng = array();
$lat2 = array();
$lng2 = array();

if (($handle = fopen("latlng_origin.csv", "r")) && ($handle2 = fopen("latlng_destination.csv", "r")) !== FALSE) {
while (($data = fgetcsv($handle, 1000, ";")) && ($data2 = fgetcsv($handle2, 1000, ";")) !== FALSE) { //fetch fields row by row from csv 
$num = count($data); 
$num2 = count($data2);                                      //number of fields in each row
for ($c=0; $c < $num; $c++) {
// echo $data[$c] . "<br />\n";                              //prints each fields(data)

    if ($c % 2 == 0) {
        $lat[] = $data[$c];
        $lat2[] = $data2[$c];
    }else{
        $lng[] = $data[$c];
        $lng2[] = $data2[$c];
    }
}
}
$count = count($lat);
for ($i=1; $i < $count; $i++) { 
    // echo $lat[$i];
    // $response = file_get_contents("http://192.168.43.247/mytools/android/get_multiple_distance_mytools.php?origin=$lat[$i],$lng[$i]&destination=$lat2[$i],$lng2[$i]");
    // echo $response;
    $ch =  curl_init("http://192.168.43.247/mytools/android/get_multiple_distance_mytools.php?origin=$lat[$i],$lng[$i]&destination=$lat2[$i],$lng2[$i]");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
    curl_setopt($ch, CURLOPT_TIMEOUT, 3);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept: application/json'));
    $result = curl_exec($ch);
    echo $result;
}
fclose($handle);
fclose($handle2);
}
// print_r($lat);
?>