<?php
	session_start();
	$_SESSION['login0'] = $_POST['login'];
	$_SESSION['password0'] = md5($_POST['password']);

	print "login0 = ".$_SESSION['login0']."<br>";
	print "password0 = ".$_SESSION['password0']."<br>";
	//print "link=".$_POST[links]."<br>";
	//$link = $_POST['link'];
	
	//$_SESSION['c_profile0'] = $_POST['c_profile0']; //testing....................................


$n=0;
include "../connection/_connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
$aSQL = "SELECT *  from t_user_web where userid like '".$_SESSION['login0']."' and password like '".$_SESSION['password0']."'";
$aQResult = mysqli_query($conn, $aSQL);

$nama0 = "";
$c_profile0 = "";
$witel = "";

if($aQResult){
	$n=mysqli_num_rows($aQResult);
	if($n==0){
		print "Login/ Password<br>";
		print "Anda salah<br>";
		print "Silahkan Login kembali, atau hubungi Admin.<br>";
	}
	else{
		echo "<br>";
		echo "Success."."<br>";
		echo "<a href = '../admin/admin.php' target='tengah_bawah'>Please continue.<a>";
	}

	while ($aRow = mysqli_fetch_assoc($aQResult)){
		$c_profile0=$aRow["c_profile"];
		$nama0 = $aRow["nama"];
		$witel = $aRow["witel"];

	}
	
	mysqli_free_result($aQResult);
}

	//session_start();
$_SESSION['login0'] = $_SESSION['login0'];
$_SESSION['password0'] = $_SESSION['password0'];
$_SESSION['nama0'] = $nama0;
$_SESSION['c_profile0'] = $c_profile0;
$_SESSION['witel'] = $witel;



//if($c_profile0!=="") 
	// {
	// $tanggal =  (date ("Y/m/d H:i:s"));
	// include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	// $strSQL = "INSERT INTO t_ip_visitor (ip_address, userid, nama) VALUES ('$_SERVER[REMOTE_ADDR]', '$_SESSION[login0]', '$nama0')";
	// $qry = mysqli_query($strSQL,$conn) or die ("Query1 salah");
?>
