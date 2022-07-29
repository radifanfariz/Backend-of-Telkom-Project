<?php	
	//pilih_tgl_akhir
	include "connection/connection.php";
	
	if(isset($_GET['pilih_tabel']) && !empty(isset($_GET['pilih_tabel']))){
	// $aSQL2 = "select distinct(datel) from t_datasensor_add
	// where witel like '$_GET[pilih_witel]' 
	// order by datel asc";
	// $aSQL2 = "select id_witel,id_datel, datel from t_datel where id_witel like '$_GET[pilih_witel]' order by id_datel asc";
	$aSQL2 = "SELECT id_witel,witel FROM t_witel WHERE id_witel IN (select distinct(substr(flagging,1,1)) as witel from $_GET[pilih_tabel] order by flagging ASC) ORDER BY id_witel ASC";
	$aQResult2=mysqli_query($conn, $aSQL2);
	
	while( $row = mysqli_fetch_array($aQResult2) ){
		$id_witel = $row['id_witel'];
		$witel = $row['witel'];

      $witel_array [] = array("id_witel" => $id_witel,"witel" => $witel);
   }
	
	echo json_encode($witel_array);
	}
?>