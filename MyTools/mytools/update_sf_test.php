<?php
require_once 'dbDetails.php';
$conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');

        //$cust_name = $_POST['cust_name'];
        //$cust_addr = $_POST['cust_addr'];
        
        $cust_name = 'medstp';
        $cust_addr = 'selam v';
        
		
        //$idx = $_POST['idx'];
		$idx = 1;
		
        echo $cust_name;
        echo $cust_addr;
        echo $idx;


        $strSQL = "UPDATE t_sales_force SET 
        cust_name='".$cust_name."',
        cust_addr='".$cust_addr."' 
        WHERE idx =".$idx;



		$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
    
?>