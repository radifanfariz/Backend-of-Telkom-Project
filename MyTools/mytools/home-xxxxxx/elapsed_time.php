<?php 
$time = time(); 

if (isset($_COOKIE['cookie_info'])) 
{ 
  setcookie ("cookie_info", "", $time - 3600); 
echo "Logged Out"; 
} 

echo "jumlah_detik=".$time; 
?> 
