<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL = "Select * from t_hotnews order by id desc limit 5";
	$qry=mysql_query($aSQL);
	
?>
	
	

<body>
<table width="1000" border="1">
  <tr>
    <td width="150">
	kolom1
	</td>
    <td width="850">
	<p>
	kolom2
	</p>
    
	
	  <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
