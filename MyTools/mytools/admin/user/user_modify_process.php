



<?php
	print "confirm=".$_POST["confirm"]."<br>";	
	
  	print "id=".$_POST["id"]."<br>";
  	print "witel=".$_POST["witel"]."<br>";
  	print "unit=".$_POST["unit"]."<br>";
	print "nama=".$_POST["nama"]."<br>";
	print "userid=".$_POST["userid"]."<br>";
	
	print "handphone=".$_POST["handphone"]."<br>";
	$userid=$_POST["handphone"];
	//print "c_profile=".$_POST[c_profile]."<br>";
	


  	print "select_profile=".$_POST["select_profile"]."<br>";    
		print "userid=".$_POST["handphone"]."<br>";
	
?>

<?php

  			if($_POST["confirm"]=="yes")
				{
				$password = 'fa845342ff04a7595e896a89c6f99274';
				include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   				$aSQL = "UPDATE t_user_web set nama='$_POST[nama]', userid='$_POST[userid]', unit='$_POST[unit]', c_profile ='$_POST[select_profile]', password ='$password', handphone='$_POST[handphone]', userid='$userid' where id=$_POST[id]";
				$aQResult=mysqli_query($conn, $aSQL);
				}
			else
			    {
				include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   				$aSQL = "UPDATE t_user_web set nama='$_POST[nama]', userid='$_POST[userid]', unit='$_POST[unit]', c_profile ='$_POST[select_profile]', handphone='$_POST[handphone]', userid='$_POST[userid]' where id=$_POST[id]";
				$aQResult=mysqli_query($conn, $aSQL);
				}

?>





<script javascript="JavaScript">
        location.href="user_list.php";
</script>
