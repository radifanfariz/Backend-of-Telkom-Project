<?php	

	include "connection/connection.php";
	if(isset($_GET['witeldatel_code']) && isset($_GET['tabel']) && !empty($_GET['witeldatel_code']) && isset($_GET['tabel'])){
	$SQL = "select distinct(flagging),date,data_temperatur from $_GET[tabel]
	where substr(flagging,1,2) like '$_GET[witeldatel_code]' 
	order by flagging asc";
	
    $query_result=mysqli_query($conn, $SQL);
    
    $no = 1;
	
	while( $row = mysqli_fetch_array($query_result) ){
        $date = $row['date'];
      $flagging = $row['flagging'];
      $data_temperatur = $row['data_temperatur'];

      $datatables_array [] = array("no" => $no,"date" => $date,"flagging" => $flagging,
    "data_temperatur" => $data_temperatur);
      $no++;
   }
	
	echo json_encode($datatables_array);
	}
	
?>