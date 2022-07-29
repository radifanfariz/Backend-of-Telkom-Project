<?php
//session_start();	//Harus pada baris dua, jika tidak akan ada warning...

	if(isset($_SESSION['login0']) && !empty($_SESSION['login0']))
		//echo "login0=". $_SESSION["login0"]. "<br>";
		
	if(isset($_SESSION['password0']) && !empty($_SESSION['password0']))
		//echo "password0=".$_SESSION['password0']."<br>";
	
	if(isset($_SESSION['nama0']) && !empty($_SESSION['nama0']))
		//echo "nama0=". $_SESSION['nama0']. "<br>";
		
	if(isset($_SESSION['c_profile0']) && !empty($_SESSION['c_profile0']))
		//echo "c_profile0=".$_SESSION['c_profile0']."<br>";
?>





<?php
	$_SESSION['c_profile0']="0";
	$nama_form="0";
	
	{
	$script_name=trim($_SERVER["SCRIPT_NAME"]);		//OK	
	//echo "script_name=".$_SERVER["SCRIPT_NAME"]."<br>"; //OKE
  	
	$path_info=$_SERVER['SCRIPT_FILENAME']; 
    //echo "path_info=".$path_info."<br>";
	
	$c_profile0=$_SESSION['c_profile0'];
	}
	
 ?>






<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	//$aSQL1 = "select *  from p_profile where c_profile ='02' and nama_form='$script_name'";
	$aSQL1 = "select *  from p_profile where c_profile ='$c_profile0' and nama_form='$script_name'";
	$aQResult1=mysqli_query($conn, $aSQL1);
?>




 
 
 
 
 
 
 
<?php
       $no = 0;
	   while ($aRow1 = mysqli_fetch_assoc($aQResult1))
       {
	   $no++;
	   $nama_form=$aRow1["nama_form"];
	   

?>
	
	
<?php	
/*
print $aRow1["c_profile"]."<br>";
print $aRow1["l_profile"]."<br>";
print $aRow1["d_profile"]."<br>";
print $aRow1["nama_form"]."<br>";
*/
?>
	

<?php
}
?>
	
	
	

	
	<?php  
	  

       
	   		//echo "<br>".">>>Current Script_name = "."$script_name"."<br>"; //XXXXXXXXXXXXXopen the left side ("//") for maintain
			$str_hasil = strstr($nama_form, $script_name);
       		//echo "<br>"."str_hasil ="."$str_hasil"."<br>"."<br>"; //XXXXopen the left side ("//") for maintain

		
 			if($str_hasil!=null)
			{
         	//exit();
			//print "Oke";
			}
			
			elseif($str_hasil==null)
			{
		 	include "login/attention_please.php"; 
         	exit();
			//print "OKe";
			}
	

?>
