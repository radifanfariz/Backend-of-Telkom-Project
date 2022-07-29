<?php

	print "confirm=".$_POST["confirm"]."<br>";	
	print "id=".$_POST["id"]."<br>";	
	
  	
	  	print "cust_name= ".$_POST["cust_name"]."<br>";
  		print "cust_addr= ".$_POST["cust_addr"]."<br>";
  		print "inst_addr= ".$_POST["inst_addr"]."<br>";

?>





<br>
<?php

  			if($_POST["confirm"]=="yes")
				{
				include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
				$aSQL = "
				UPDATE images 
				set cust_name='$_POST[cust_name]',
				cust_addr='$_POST[cust_addr]',
				inst_addr='$_POST[inst_addr]' 
				where id=$_POST[id] 
				";
				
				$aQResult=mysqli_query($conn, $aSQL);
				}

?>





<script javascript="JavaScript">
        location.href="data_mytools_list.php";
</script>
