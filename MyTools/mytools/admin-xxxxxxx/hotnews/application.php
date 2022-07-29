<?
$db_host="localhost";
$db_login="medium";
$db_login2="root";
$db_password="telkom";
$db_password2="sidney";
?>



<?php
   // This information comes from global variables.............
   print "<B>"."Information from APPLICATION.PHP"."</B>"."<BR>";
   print "Your login is: $login"."<BR>";
   print "Your password is: $password"."<BR>";
   print "Your (client) profile is: $client_profile"."<BR>";	
   print "Script Name: ".$_SERVER["SCRIPT_NAME"]."<BR>"."<br>";

   if ($client_profile == Null)
   {
    print "Your Login/Password is wrong, or"."<BR>";
    print "You don't have authorisation to access this page"."<BR>";
    print "Please Enter your Login/Password ...!!!"."<BR>"."<BR>";
    //include "login2.html";	     
    exit();
   }


?>

