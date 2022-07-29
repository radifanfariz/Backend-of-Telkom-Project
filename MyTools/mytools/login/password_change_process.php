<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	
	if(isset($_SESSION['login0']) && !empty($_SESSION['login0']))
		echo "login0=". $_SESSION["login0"]. "<br>";
		
	if(isset($_SESSION['password0']) && !empty($_SESSION['password0']))
		echo "password0=".$_SESSION['password0']."<br>";
	
	if(isset($_SESSION['nama0']) && !empty($_SESSION['nama0']))
		echo "nama0=". $_SESSION['nama0']. "<br>";
		
	if(isset($_SESSION['c_profile0']) && !empty($_SESSION['c_profile0']))
		echo "c_profile0=".$_SESSION['c_profile0']."<br>";
?>

<br>


<?php

	print "password_lama=".$_POST["password_lama"]."<br>";	
	print "password_baru=".$_POST["password_baru"]."<br>";	
	print "password_baru2=".$_POST["password_baru2"]."<br>";	
?>




<?php
	
	if ($_POST["password_baru"]==$_POST["password_baru2"])
		{
		print "password confirmasi Oke";
		include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   		echo md5('$_POST[password_baru]');
		$aSQL = "UPDATE t_user_web set password =md5('$_POST[password_baru]') where userid='$_SESSION[login0]'";
		$aQResult=mysqli_query($conn, $aSQL);
		}
	else
		{
		print "password confirmasi salah";
		}


?>





<script javascript="JavaScript">
        location.href="../admin/admin.php";
</script>




