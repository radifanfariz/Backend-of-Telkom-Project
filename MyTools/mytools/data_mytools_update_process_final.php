<?php
/*
	print "confirm=".$_POST["confirm"]."<br>";	
	print "id=".$_POST["id"]."<br>";	
  	print "status_valdat= ".$_POST["status_valdat"]."<br>";
*/
?>





<br>
<?php
  			if($_POST["confirm"]=="yes")
				{
				include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
				$aSQL = "UPDATE images set status_valdat='$_POST[status_valdat]' where id=$_POST[id] ";
				
				$aQResult=mysqli_query($conn, $aSQL);
				}
?>





<script javascript="JavaScript">
        location.href="data_mytools_list.php";
</script>
