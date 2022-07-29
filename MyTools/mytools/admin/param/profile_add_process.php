<?php
  print "c_profile=".$_POST[c_profile]."<br>";	
  print "l_profile=".$_POST[l_profile]."<br>";	
  print "nama_form=".$_POST[nama_form]."<br>";	
?>


<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO p_profile (c_profile, l_profile, d_profile, nama_form) VALUES ('$_POST[c_profile]','$_POST[l_profile]','$_POST[d_profile]','$_POST[nama_form]')";
	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
		
?>

<script javascript="JavaScript">
        location.href="profile_list.php";
</script>


