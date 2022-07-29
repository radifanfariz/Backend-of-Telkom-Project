
<?php
  print "id=".$_POST[id]."<br>";	
  $id==$_POST[id];	
  
 ?>

<HTML>
<BODY>




<?php
  	if($_POST[confirm]=="yes")			
	{
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$strSQL = "delete from t_hotnews where id=$_POST[id]";
  	$qry = mysql_query($strSQL) or die ("Query salah");
	}
	?>

<script javascript="JavaScript">
        location.href="hotnews_list.php";
</script>


</HTML>
</BODY>


