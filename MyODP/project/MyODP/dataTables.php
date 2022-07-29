<?php	

	include "dbDetails.php";
	if(isset($_GET['page']) && isset($_GET['page'] ) && isset($_GET['perpage']) && isset($_GET['perpage'] )){
    $start = $_GET['page'];
    $perpage = $_GET['perpage'];
    $no = $start;
    if ($start > 1) {
      $start = $perpage * ($start - 1);
      $start = $start + 1;
      $no = $start;
    }
    if(isset($_GET['filter']) && isset($_GET['filter']) && isset($_GET['order']) && isset($_GET['order'])){
        $SQL = "select odp_name,latitude,longitude from t_odp where nik = $_GET[filter]
        order by odp_name $_GET[order] limit $start , $perpage ";
      }

    $conn = mysqli_connect(HOST, USER, PASS, DB_LOGIN) or die ('Unable to Connect...');
  
    $query_result=mysqli_query($conn, $SQL);
    
    while( $row = mysqli_fetch_array($query_result) ){
          $odp_name = $row['odp_name'];
        $latitude = $row['latitude'];
        $longitude = $row['longitude'];

        $datatables_array [] = array("no" => $no,"odp_name" => $odp_name,"latitude" => $latitude,
      "longitude" => $longitude);
        $no++;
    }
    
    if (isset($datatables_array)) {
      echo json_encode($datatables_array);
    }else{
      $datatables_noData [] = array("no" => "No Data","odp_name" => "No data","latitude" => "No Data",
      "longitude" => "No Data");
      echo json_encode($datatables_noData);
    }
	}
	
?>