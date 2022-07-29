<?php

  print "id=".$_POST['id']."<br>";	
  print "confirm=".$_POST['confirm']."<br>";	
  
?>





<?php
  	if($_POST['confirm']=="yes")			
	{
  	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$strSQL = "delete from images where id=$_POST[id]";
  	$qry = mysqli_query($conn,$strSQL) or die ("Query salah");
	echo "Success...";
  	}
?>

<script javascript="JavaScript">
        location.href="data_mytools_list.php";
</script>
