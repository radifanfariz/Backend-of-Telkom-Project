<?php	

	include "connection/connection.php";
	if(isset($_GET['pilih_sto']) && isset($_GET['pilih_tabel']) && !empty($_GET['pilih_sto']) && isset($_GET['pilih_tabel'])){
	$aSQL2 = "select distinct(flagging) from $_GET[pilih_tabel]
	where substr(flagging,3,3) like '$_GET[pilih_sto]' 
	order by flagging asc";
	
	$aQResult2=mysqli_query($conn, $aSQL2);
	
	while( $row = mysqli_fetch_array($aQResult2) ){
      $flagging = $row['flagging'];

      $flagging_array [] = array("flagging" => $flagging);
   }
	
	echo json_encode($flagging_array);
	}
	
?>