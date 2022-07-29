<?php
require_once 'dbDetails.php';
$conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
    if($_SERVER["REQUEST_METHOD"]=='POST'){
		$idx = $_POST['idx'];
        $cust_name = $_POST['cust_name'];
        $cust_addr = $_POST['cust_addr'];
		$inst_addr = $_POST['inst_addr'];
		$stp_panel = $_POST['stp_panel'];
        $stp_port = $_POST['stp_port'];
        $k_teknis = $_POST['k_teknis'];
        $k_nonteknis = $_POST['k_nonteknis'];
        $barcode = $_POST['barcode'];
        $barcode2 = $_POST['barcode_dw'];
        $barcode3 = $_POST['barcode_port'];
        $user_id2 = $_POST['user_id'];
        $imei = $_POST['imei'];
		
		
		
        
        //echo $cust_name;
        //echo $cust_addr;
        //echo $idx;


        $strSQL = "UPDATE t_sales_force SET 
        cust_name='".$cust_name."',
		cust_addr='".$cust_addr."',
		inst_addr='".$inst_addr."',
		stp_panel='".$stp_panel."',
		stp_port='".$stp_port."',
        kendala_teknis='".$k_teknis."',
        kendala_nonteknis='".$k_nonteknis."',
        barcode_result='".$barcode."',
        barcode_dw='".$barcode2."',
        barcode_port='".$barcode3."',
        user_id2='".$user_id2."',
        imei='".$imei."'
		
		
        WHERE idx =".$idx;



		$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
    }
?>