<?php

  print "idx=".$_POST['idx']."<br>";	
  print "confirm=".$_POST['confirm']."<br>";	
  
?>





<?php
  	if($_POST['confirm']=="yes")			
	{
  	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$strSQL = "delete from t_user_mobile where idx=$_POST[idx]";
  	$qry = mysqli_query($conn,$strSQL) or die ("Query salah");
  	}
?>

<script javascript="JavaScript">
        location.href="user_mobile_list.php";
</script>
