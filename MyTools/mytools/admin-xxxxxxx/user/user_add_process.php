<?php
   //print "userid = $_POST[userid]"."<BR>";
   print "nama = $_POST[nama]"."<BR>";
   print "handphone = $_POST[handphone]"."<BR>";
   //print "c_profile = $_POST[select_profile]"."<BR>";
   print "password = $_POST[password]"."<BR>";
?>

<?php


	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_user_web_bges (witel, unit, nama, nik, handphone, userid, password, c_profile) 
	VALUES ('$_POST[witel]','$_POST[unit]', '$_POST[nama]', '$_POST[nik]', '$_POST[handphone]', '$_POST[handphone]', md5('$_POST[password]'),'$_POST[c_profile]'  )";
	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");

	?> 





<?php
	//$conn = mysql_connect ("localhost", "root", "telkom") or die ("Koneksi Gagal");
	//mysql_select_db("db_speedy",$conn);
	//$strSQL = "INSERT INTO t_user (userid, nama, notel, c_profile, password) VALUES ('$_POST[userid]','$_POST[nama]','$_POST[handphone]', '$_POST[select_profile]', md5('$_POST[password]'))";
	//$qry = mysql_query($strSQL,$conn) or die ("Query salah");
?>






<script javascript="JavaScript">
        location.href="user_list.php";
</script>

