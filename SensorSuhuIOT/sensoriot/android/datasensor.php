<?php	
	include "connection/connection.php";
	
	if(isset($_GET['flagging']) && !empty($_GET['flagging'])){
	
	$aSQL2 = "SELECT sto,data_temperatur,date,t_flagging.cutoff_alarm,location_point,address,latitude,longitude FROM t_datasensor_update INNER JOIN t_flagging ON t_datasensor_update.flagging = t_flagging.flagging WHERE t_flagging.flagging='$_GET[flagging]'";
	$aQResult2=mysqli_query($conn, $aSQL2);
	
	while( $row = mysqli_fetch_array($aQResult2) ){
      $sto = $row['sto'];
      $data_temp = $row['data_temperatur'];
      $date = $row['date'];
      $cutoff_alarm = $row['cutoff_alarm'];
      $loc_point = $row['location_point'];
      $address = $row['address'];
      $lat = $row['latitude'];
      $lng = $row['longitude'];

      $datasensor_array [] = array("sto" => $sto,"data_temp" => $data_temp,
      "date" => $date,
      "cutoff_alarm" => $cutoff_alarm,
      "loc_point" => $loc_point,
      "address" => $address,
      "lat" => $lat,
      "lng" => $lng);
   }
	
	echo json_encode($datasensor_array);
	}
	
?>