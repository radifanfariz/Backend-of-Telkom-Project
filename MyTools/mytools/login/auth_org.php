<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	//print "c_profile0=".$_SESSION[c_profile0]."<br>";
?>

<?
if ($_SESSION[c_profile0] =="")
{{{
include "login/attention_please.html"; 
exit();
}}}

elseif ($_SESSION[c_profile0] !="")


{{{
?>


	<?php
  	//include "application.php";
  	$script_name=trim($_SERVER["SCRIPT_NAME"]);
	
	//echo "secripy_name=".$_SERVER["SCRIPT_NAME"]."<br>";
  	//$script_name=$PATH_INFO; 

  	//$n=0; 
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	
	//$aSQL = "SELECT *  from p_profile where c_profile = '$_SESSION[c_profile0]'";								//profile per folder
	
	$aSQL = "SELECT *  from p_profile where c_profile = '$_SESSION[c_profile0]' and nama_form='$script_name'";	//profile per file
	
	
  	$aQResult = mysql_query($aSQL);

       while ($aRow = mysql_fetch_array($aQResult))
       {
       $nama_form_profile=trim($aRow["nama_form"]);
       echo ".....Client profile = ".$aRow["nama_form"]."<br>"; //open the left side ("//") for maintain
       }
	   
	   
	   
	//if($nama_form_profile !=null)
	//{
	   
	   
       		//mysql_free_result($aQResult);
       
	   		echo "<br>".".....Current Script_name = "."$script_name"."<br>"; //open the left side ("//") for maintain
       		
			
			$str_hasil = strstr($nama_form_profile, $script_name);
			
       		echo "<br>".".....str_hasil ="."$str_hasil"."<br>"."<br>"; //open the left side ("//") for maintain
			//}
		
		
 			if($str_hasil!=null)
			{
         	//exit();
			//print "Oke";
			}
			
			elseif($str_hasil==null)
			{
		 	include "login/attention_please.html"; 
         	exit();
			//print "OKe";
			}
	
	
	//}
	
	
 //else
 //print "oke";  
//include "attention_please.html"; 
?>


<?
}}}
?>
