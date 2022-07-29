<?php
require_once 'dbDetails.php';
$conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
    if($_SERVER["REQUEST_METHOD"]=='POST'){
        $cust_name = $_POST['cust_name'];
        $cust_addr = $_POST['cust_addr'];
        $idx = $_POST['idx'];
        echo $cust_name;
        //echo $cust_addr;
        
        echo $idx;


        $strSQL = "UPDATE t_sales_force SET 
        cust_name='".$cust_name."',
		cust_addr='".$cust_addr."'
		
        WHERE idx =".$idx;



		$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
    }
?>