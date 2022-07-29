

<?php
    if($_POST[confirm]=="yes")			
	{
  	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	$strSQL = "delete from p_profile where datetime_enter = '$_POST[datetime_enter]' and sto='$_POST[sto]' ";
	
  	$qry = mysql_query($strSQL) or die ("Query salah");
	}
?>

<script javascript="JavaScript">
        location.href="rekap_service_status_list.php";
</script>
