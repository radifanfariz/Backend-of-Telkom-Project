<?
	session_start();
	//$_SESSION[login0] = $_POST[login];
	//$_SESSION[password0] = md5($_POST[password]);
?>

<?php
	
	print "userid=".$_POST[userid]."<br>";
	print "links2a=".$_POST[links2a]."<br>";
	
	$user1 = trim($_POST[userid]);
	$password1 = md5($_POST[password]);
	
	echo "user1=".$user1."<br>";
	echo "password1=".$password1."<br>";

?>


<?php
include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
$aSQL = "SELECT *  from t_user where userid like '$user1' and password like '$password1'";
$aQResult=mysql_query($aSQL);


while ($aRow = mysql_fetch_array($aQResult))
	{
	$c_profile0=$aRow["c_profile"];
	$nama0 = $aRow["nama"];
	print "nama0="."$nama0"."<br>";
	}


?>



