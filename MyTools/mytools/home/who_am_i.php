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


 


 
 


