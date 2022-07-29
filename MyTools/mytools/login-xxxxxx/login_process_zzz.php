<?
	session_start();
	$_SESSION[login0] = $_POST[login];
	$_SESSION[password0] = md5($_POST[password]);
?>


<?php
	
	print "userid=".$_POST[userid]."<br>";
	print "links2a=".$_POST[links2a]."<br>";
	
	$user1 = trim($_POST[userid]);
	$password1 = md5($_POST[password]);
	
	echo "user1=".$user1."<br>";
	echo "password1=".$password1."<br>";

?>

<?php
	/**
	print "login=".$_POST[login]."<br>";
	print "password=".md5($_POST[password])."<br>";
	print "links2a=".$_POST[links2a]."<br>";	
	$user1 = trim($_SESSION[login]);
	$password1 = trim(md5($_POST[password]));
	**/
?>


<?php
$n=0;
include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
//$aSQL = "SELECT *  from t_user where userid like '$_SESSION[login0]' and password like '$_SESSION[password0]'";
$aSQL = "SELECT *  from t_user where userid like '$user1' and password like '$password1'";
$aQResult=mysql_query($aSQL);


if($aQResult)
{
 $n=mysql_num_rows($aQResult);
 
 if($n==0)
	{
	 print "Login/ Password<br>";
	 print "Anda salah<br>";
	 print "Silahkan Login kembali, atau hubungi Admin.....!!!<br>";
	 
	}
else
	{
	echo "success1..."."<br>"."<br>";
	//include "graph3.php";
	}
	
{{

while ($aRow = mysql_fetch_array($aQResult))

{

$c_profile0=$aRow["c_profile"];
$nama0 = $aRow["nama"];

//*******************************************************
/**
print "c_profile0=".$c_profile0."<br>";
print "nama0=".$nama0."<br>";
print "login0=".$_SESSION[login0]."<br>";
print "password0=".$_SESSION[password0]."<br>";
**/
//*******************************************************

}
mysql_free_result($aQResult);
echo "</TABLE>";
}}

}

?>






<?

if($c_profile0!=null) 
	{
	$tanggal =  (date ("Y/m/d H:i:s"));
	include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_ip_visitor (tanggal, ip_address, computer_name, userid, nama) VALUES ('$tanggal','$_SERVER[REMOTE_ADDR]','$computer_name', '$_SESSION[login0]', '$nama0')";
	$qry = mysql_query($strSQL,$conn) or die ("Query salah");
	echo "success2..."."<br>"."<br>";
	//include "graph3.php";
	//include "../admin/user/user_add.php";
	}
?>


<script javascript="JavaScript">
        //location.href="admin/admin.php";
		//location.href="graph3.php";
</script>


