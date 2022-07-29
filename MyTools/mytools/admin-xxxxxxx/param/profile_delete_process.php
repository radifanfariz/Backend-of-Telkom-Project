

<?php
    if($_POST[confirm]=="yes")			
	{
  	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$strSQL = "delete from p_profile where id = '$_POST[id]' ";
  	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
	}
?>

<script javascript="JavaScript">
        location.href="profile_list.php";
</script>
