<?php	
	//pilih_tgl_akhir
	include "connection/connection.php";
	
	if(isset($_GET['pilih_datel']) && isset($_GET['pilih_tabel']) && !empty($_GET['pilih_datel']) && isset($_GET['pilih_tabel'])){
	
	$aSQL2 = "select distinct(substr(flagging,3,3)) AS sto from $_GET[pilih_tabel]
	where substr(flagging,1,2) like '$_GET[pilih_datel]' 
	order by flagging asc";
	$aQResult2=mysqli_query($conn, $aSQL2);
	
	while( $row = mysqli_fetch_array($aQResult2) ){
      $sto = $row['sto'];

      $sto_array [] = array("sto" => $sto);
   }
	
	echo json_encode($sto_array);
	}
	
?>