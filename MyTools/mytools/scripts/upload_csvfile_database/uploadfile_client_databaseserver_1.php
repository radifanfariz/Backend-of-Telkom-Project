
<?php
   //echo "loginid=".$_POST[loginid]."<br>";
   //echo "passwordid=".$_POST[passwordid]."<br>"."<br>";
   
?>



<?php
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	//$aSQL = "select * from t_user where user2='$_POST[loginid]' and pass2='$_POST[passwordid]'";
	
	$aSQL = "select * from t_user";
	
	$aQResult=mysql_query($aSQL);
?>


<?php
       while ($aRow = mysql_fetch_array($aQResult))
       	{
		$nama = $aRow["nama"];
		//echo "nama=".$nama."<br>";
		}
?>


<?php
    if ($nama!="")
	{
?>

<br>

<body bgcolor="#808000">


<form enctype="multipart/form-data" action="uploadfile_client_databaseserver_2.php" method="POST">
	<table bgcolor="aqua"><tr>
	<input type="hidden" name="MAX_FILE_SIZE" value="100000000000" /> <!--- value="100000000000", total 12 digit OK --->
	<tr><td>Upload File:</td></tr><br> 
	<td><input name="uploadedfile" type="file"/></td><br />
	<tr><td><input type="submit" value="Execute"/></td></tr>
	</tr>
	</table>
</form>

<?		
	}
	
	if ($nama=="")
	{
	echo "Login/Password anda salah ...";
	}
	
	
?>



