



<?php
	print "confirm=".$_POST['confirm']."<br>";	
	
  	print "idx=".$_POST['idx']."<br>";
  	print "witel=".$_POST['witel']."<br>";
	print "nama=".$_POST['nama']."<br>";
	print "handphone=".$_POST['handphone']."<br>";
	print "imei=".$_POST['imei']."<br>";
	print "flagging=".$_POST['flagging']."<br>";
	print "flagging_2=".$_POST['flagging_2']."<br>";
	
	

  	print "select_profile=".$_POST['select_profile']."<br>";    

   $pj=strlen($_POST['handphone']);
   print "pj=".$pj."<br>";
   $userid=substr($_POST['handphone'], 1,$pj-1);
   print "userid=".$userid."<br>";
   
	
?>

<?php

  			if($_POST['confirm']=="yes")
				{
				$password = 'fa845342ff04a7595e896a89c6f99274';
				include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   				$aSQL = "UPDATE t_user_mobile set nama='$_POST[nama]', c_profile ='$_POST[select_profile]', pass ='$password', handphone='$_POST[handphone]', imei='$_POST[imei]', flagging='$_POST[flagging]', flagging_2='$_POST[flagging_2]', android_version='$_POST[android_version]', userid='$userid' where idx=$_POST[idx]";
				print $aSQL;
				$aQResult=mysqli_query($conn, $aSQL);
				}
			else
			    {
				include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   				$aSQL = "UPDATE t_user_mobile set nama='$_POST[nama]', c_profile ='$_POST[select_profile]', handphone='$_POST[handphone]', imei='$_POST[imei]', flagging='$_POST[flagging]', flagging_2='$_POST[flagging_2]', android_version='$_POST[android_version]', userid='$userid' where idx=$_POST[idx]";
				$aQResult=mysqli_query($conn, $aSQL);
				}

?>


<script javascript="JavaScript">
location.href="user_mobile_list.php";
</script>


