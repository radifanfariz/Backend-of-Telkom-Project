<?php
require_once '_dbDetails.php';

$conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
    if($_SERVER["REQUEST_METHOD"]=='POST'){
		$idx = $_POST['idx'];
        $cust_name = $_POST['cust_name'];
        $cust_addr = $_POST['cust_addr'];
		$inst_addr = $_POST['inst_addr'];
		
		$stp_name = $_POST['stp_name'];
		$stp_panel = $_POST['stp_panel'];
        $stp_port = $_POST['stp_port'];
		
		$myir_sc = $_POST['myir_sc'];
		$internet_number = $_POST['internet_number'];
		$phone_number = $_POST['phone_number'];
		
        $k_teknis = $_POST['k_teknis'];
        $k_nonteknis = $_POST['k_nonteknis'];
		$status_prov = $_POST['status_prov'];
        $barcode = $_POST['barcode'];
        $barcode2 = $_POST['barcode_dw'];
        $barcode3 = $_POST['barcode_port'];
        $barcode4 = $_POST['barcode_sn'];
        $user_id2 = $_POST['user_id'];
        $imei = $_POST['imei'];
        $latodp = $_POST['latodp'];
        $lngodp = $_POST['lngodp'];
		$latrmh = $_POST['latrmh'];
		$lngrmh = $_POST['lngrmh'];
        $alt_addr = $_POST['alt_addr'];
        $no_sc = $_POST['no_sc'];
        $rad = $_POST['rad'];
        $odo = $_POST['odo'];
        $nohp = $_POST['nohp'];
        $alt_nohp = $_POST['alt_nohp'];
        $kend_desc = $_POST['kend_desc'];
        $ket1 = $_POST['ket1'];
        $ket2 = $_POST['ket2'];
        
        //echo $cust_name;
        //echo $cust_addr;
        //echo $idx;


        $strSQL = "UPDATE t_sales_force_mytools SET 
        cust_name='".$cust_name."',
		cust_addr='".$cust_addr."',
		inst_addr='".$inst_addr."',
		
		stp_name='".$stp_name."',
		stp_panel='".$stp_panel."',
		stp_port='".$stp_port."',
		
		myir_sc='".$myir_sc."',
		internet_number='".$internet_number."',
		phone_number='".$phone_number."',
		
        kendala_teknis='".$k_teknis."',
        kendala_nonteknis='".$k_nonteknis."',
		status_prov='".$status_prov."',
        barcode_result='".$barcode."',
        barcode_dw='".$barcode2."',
        barcode_port='".$barcode3."',
        barcode_sn='".$barcode4."',
        user_id2='".$user_id2."',
        imei='".$imei."',
        latitude_odp='".$latodp."',
        longitude_odp='".$lngodp."',
        latitude_inst_addr='".$latrmh."',
        longitude_inst_addr='".$lngrmh."',
        alt_addr='".$alt_addr."',
        no_sc='".$no_sc."',
        distance_rad='".$rad."',
        distance_odo='".$odo."',
        hp='".$nohp."',
        alt_hp='".$alt_nohp."',
        keterangan_kendala='".$kend_desc."',
        ket1='".$ket1."',
        ket2='".$ket2."'
        WHERE idx =".$idx;



		$qry = mysqli_query($conn, $strSQL) ;
    }

$response = file_get_contents('http://192.168.43.2/mytools/android/_api_provisioning.php?idx='.$idx);
echo $response;

?>
