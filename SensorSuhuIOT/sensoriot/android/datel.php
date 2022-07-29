
<?php	
	//pilih_tgl_akhir
	include "connection/connection.php";
	
	if(isset($_GET['pilih_witel']) && isset($_GET['pilih_tabel']) && !empty($_GET['pilih_witel']) && isset($_GET['pilih_tabel'])){
	
	// $aSQL2 = "select distinct(datel) from t_datasensor_add
	// where witel like '$_GET[pilih_witel]' 
	// order by datel asc";
	// $aSQL2 = "select id_witel,id_datel, datel from t_datel where id_witel like '$_GET[pilih_witel]' order by id_datel asc";
	$aSQL2 = "SELECT id_witel,id_datel,datel FROM t_datel WHERE id_witel LIKE '$_GET[pilih_witel]' AND id_datel IN (select distinct(substr(flagging,2,1)) as datel from $_GET[pilih_tabel] order by flagging ASC) ORDER BY id_datel ASC";
	$aQResult2=mysqli_query($conn, $aSQL2);
	
	while( $row = mysqli_fetch_array($aQResult2) ){
		$id_witel = $row['id_witel'];
		$id_datel = $row['id_datel'];
		$datel = $row['datel'];

      $datel_array [] = array("id_witel" => $id_witel,"id_datel" => $id_datel,"datel" => $datel);
   }
	
	echo json_encode($datel_array);
	}
	
?>