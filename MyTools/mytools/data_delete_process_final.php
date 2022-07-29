

<?php
	print "keyword=".$_POST[keyword]."<br>";
	
	$keyword2 = md5($_POST[keyword]);
	
	print "keyword2=".$keyword2."<br>";
	
	$id =$_POST[id];
	print "id=".$id."<br>";
	
?>


<?php
   include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL = "SELECT pass from t_user_mobile where userid = '8116091965' ";
   $aQResult = mysql_query($aSQL);
?>


<?php

       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $pass = $aRow["pass"];

       }

       mysql_free_result($aQResult);
       
	   //print "pass=".$pass."<br>";
?>





<?

	
    //if( ($_POST[confirm]=="yes") and ($keyword2==$pass)	)


	if($keyword2 == $pass)
	
	{
	print "OKE";
  	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$strSQL = "delete from t_datek_bgest where id = $_POST[id] ";
  	$qry = mysql_query($strSQL) or die ("Query salah");
	}
	else
	{
	print "Your Password is wrong...";
	}
	
?>

<script javascript="JavaScript">
        location.href="data_list.php";
</script>
