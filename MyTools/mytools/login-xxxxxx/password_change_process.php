<?php
	session_start();
	echo "login0=".$_SESSION[login0]. "<br>";
	echo "password0=".$_SESSION[password0]."<br>";
?>



<?
	print "userid=".$_POST[userid]."<br>";	
	print "password_lama=".$_POST[password_lama]."<br>";	
	print "password_baru=".$_POST[password_baru]."<br>";	
	print "password_baru2=".$_POST[password_baru2]."<br>";	
?>

<?
	
	if ($_POST[password_baru]==$_POST[password_baru2])
		{
		print "password confirmasi Oke";
		include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   		echo md5('$_POST[password_baru]');
		$aSQL = "UPDATE t_user_bges set password =md5('$_POST[password_baru]') where userid='$_SESSION[login0]'";
		$aQResult=mysql_query($aSQL);
		}
	else
		{
		print "password confirmasi salah";
		}


?>



<?php
	//include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
    //$aSQL = "UPDATE t_user_web_bges set password =md5('telkom') where nik='$_POST[nik]'";
	//$aQResult=mysql_query($aSQL);
?>



<script javascript="JavaScript">
        //location.href="graph3.php";
</script>




