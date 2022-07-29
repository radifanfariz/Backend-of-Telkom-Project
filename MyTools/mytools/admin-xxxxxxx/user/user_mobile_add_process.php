<?php
   print "witel =". $_POST['witel']."<BR>";
   print "userid =". $_POST['handphone']."<BR>";
   
   print "nama =". $_POST['nama']."<BR>";
   print "c_profile =". $_POST['c_profile']."<BR>";
   print "pass =". $_POST['pass']."<BR>";
   
   print "handphone =". $_POST['handphone']."<BR>";
   print "android_version =". $_POST['android_version']."<BR>";
   

   

   

   $pj=strlen($_POST['handphone']);
   print "pj=".$pj."<br>";
   $userid=substr($_POST['handphone'], 1,$pj-1);
   print "userid=".$userid."<br>";


	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_user_mobile (idy, witel, userid, nama, c_profile, pass, flagging, handphone, imei, android_version) 
	VALUES ('1',
            '".$_POST['witel']."',
            '$userid', 
            '".$_POST['nama']."', 
            '".$_POST['c_profile']."', 
            md5('".$_POST['pass']."') , 
            '50', '".$_POST['handphone']."', 
            '".$_POST['imei']."', 
            '".$_POST['android_version']."' )";
	


   //VALUES ('1', '".$_POST['witel']."','$userid', '".$_POST['nama']."', '".$_POST['c_profile']."', md5('".$_POST['pass']."') , '50', '".$_POST['handphone']."', '".$_POST['imei']."', '".$_POST['android_version']."'   )";

   echo $strSQL;
	$qry = mysqli_query($conn,$strSQL) or die ("Query salah");
	?> 



<script javascript="JavaScript">
        location.href="user_mobile_list.php";
</script>

