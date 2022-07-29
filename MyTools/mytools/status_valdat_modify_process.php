



<?php
	print "idx=".$_POST["idx"]."<br>";
  	print "witel=".$_POST['witel']."<br>";
	print "cust_name=".$_POST['cust_name']."<br>";
	print "internet_number=".$_POST['internet_number']."<br>";
	print "phone_number=".$_POST['phone_number']."<br>";
	print "status_valdat=".$_POST['status_valdat']."<br>";
	
    include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "UPDATE t_sales_force set status_valdat='$_POST[status_valdat]' where idx=$_POST[idx]";
	print $aSQL;
	$aQResult=mysqli_query($conn, $aSQL);
?>


<script javascript="JavaScript">
location.href="_daman_mytools_detail.php";
</script>


