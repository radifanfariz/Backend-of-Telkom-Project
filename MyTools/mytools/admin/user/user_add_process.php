<?php


//   print "nama =".$_POST[nama]."<BR>";
  // print "witel =".$_POST[witel]."<BR>";
	


	
?>






<?php

	include "../../connection/_connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	$strSQL = "INSERT INTO t_user_web (witel, unit, nama, nik, handphone, userid, password, c_profile) 
	
	VALUES ('$_POST[witel]', '$_POST[unit]', '$_POST[nama]', '$_POST[nik]', '$_POST[handphone]', '$_POST[handphone]', md5('$_POST[password]'), '$_POST[c_profile]'  )";
	
	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
    
	echo $qry;
	
	?> 






<script javascript="JavaScript">
       location.href="user_list.php";
</script>

