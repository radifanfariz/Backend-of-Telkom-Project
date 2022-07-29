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
	


	
	
<body bgcolor="#FFFF97">
<table width="800" border="0" align="center">
<center>
<font face="Arial" color="teal" size="+2">
<B>
NEWS CAMPUS<P>
</font>
</B>

  <tr>
  
  	<?php
	while ($row = mysql_fetch_array ($qry)) 
	{{{
	?>
  
	<?
	if ($row["pictures"]!="")
	{{
	?>
	
    <td width="150" align="left">
	<div class="thumbnail">
	<a href="../../pictures/<?=$row["pictures"];?> "><img src="../../pictures/<?=$row["pictures"];?>" width="150" height="120" alt="Please click here for large picture...!!!" /></a>
	</div>
	</td>
	
	
	
	
    <td width="550" >
	<?php
	echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
	echo "<a href=hotnews_detail.php?id=$row[id] title=Untuk_detail,_click_disini...!!!>"."<font color=blue>"."<B>".$row["subject"]."</B>"."</font>"."</a>";
	
	echo "<br>";
	
	$news1 = $row["news"];
        $news2 = substr ($news1, 0, 350);
        print "$news2";
	echo "<br>";
	
	echo "<B>"."<font color=brown>"."Pengirim, ".$row["userid"]."</font>"."</B>"."<BR>"."<BR>";
	
	?>
	
	</td>
	  
	  <?}}
	  	else
		{
		//<!---  --->
	
	echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
	
	
		echo "<a href=hotnews_detail.php?id=$row[id] title=Untuk_detail,_click_disini...!!!>"."<font color=blue>"."<B>".$row["subject"]."</B>"."</font>"."</a>";
	
	echo "<br>";
	$news1 = $row["news"];
        $news2 = substr ($news1, 0, 500);
        print "$news2";
	echo "<br>";
	echo "<B>"."<font color=brown>"."Pengirim, ".$row["userid"]."</font>"."</B>"."<BR>"."<BR>";
		//<!---  --->
		
		}
	  ?>
	  
  </tr>
  
 	<?
  	}}}
	?>
  
</table>
</body>
</html>
