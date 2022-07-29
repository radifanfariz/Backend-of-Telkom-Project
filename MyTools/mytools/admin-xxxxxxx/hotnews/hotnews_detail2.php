<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL = "Select * from t_hotnews where id=3";
	$qry=mysql_query($aSQL);
	
?>
	
	

<body>
<table width="700" border="0">
  <tr>
  
    <?php
	while ($row = mysql_fetch_array ($qry)) 
	{{{
	?>
	
	
    <td width="80" align="center">
	<img src="../../pictures/DSC_0001.JPG" width="210" height="140" alt="" />
	</td>
	
    <td width="800"><p>&nbsp;</p>
	<?php
		echo "<font color=red>"."<B>".$row["subject"]."</B>"."</font>";
		echo "<br>"."<br>";
		$news1 = $row["news"];
		$news2 = substr ($news1, 0, 502);
        print "$news2";
	?>
	</td>
  	</tr>
  	<tr>
  
  
    <td colspan="2">
	

	<?php
		$news1 = $row["news"];
		$news2 = substr ($news1, 502, 15000);
        print "$news2";
		echo "<br>";
		echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
		echo "<B>"."<font color=blue>"."Pengirim, ".$row["userid"]."</font>"."</B>"."<BR>"."<BR>";
	?>
	
	</p>
    <p>&nbsp; </p>
    <p>&nbsp;</p>
	
	
	</td>
  </tr>
  
   	<?
  	}}}
	?>
	
	
</table>
</body>
</html>
