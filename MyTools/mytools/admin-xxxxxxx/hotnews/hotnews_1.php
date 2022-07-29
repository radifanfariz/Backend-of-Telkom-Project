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
	//Ada Gambar, atau Gambar tidak BLANK
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
		//Kalimat pada Block-I
		echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
		echo "<font color=blue>"."<B>".$row["subject"]."</B>"."</font>";
		echo "<br>";
		
		$news1 = $row["news"];
		$pj=strlen($news1);
		//print "pj=".$pj."<br>"."<br>";
		
		for ($i = 500; $i <= 520; $i++) {{
   		//print "i=".$i."<br>";
		
			$charkes = substr($news1,$i,1);
			//print "charkes =".$charkes."<br>";
			
			if($charkes ==" "){	//hati-hati, harus ada spasinya " "
				//print "i=".$i."<br>";
				//print "hasil = blank"."<br>";
				
						$news2 = substr ($news1, 0, $i);
        				print "$news2"."....."."<br>"."<br>";
				
				//exit;
				  break;
				}
		}}
	?>
	
	</td>
	  
	  <?}}
	  	else
		{
		//<!---  --->
	
		//Kalimat pada Block-II
		echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
		echo "<font color=blue>"."<B>".$row["subject"]."</B>"."</font>";
		echo "<br>";
		
		$news1 = $row["news"];
		$pj=strlen($news1);
		//print "pj=".$pj."<br>"."<br>";
		
		for ($i = 500; $i <= 520; $i++) {{
   		//print "i=".$i."<br>";
		
			$charkes = substr($news1,$i,1);
			//print "charkes =".$charkes."<br>";
			
			if($charkes ==" "){	//hati-hati, harus ada spasinya " "
				//print "i=".$i."<br>";
				//print "hasil = blank"."<br>";
				
						$news2 = substr ($news1, 0, $i);
        				print "$news2"."....."."<br>"."<br>";
				
				//exit;
				  break;
				}
		}}
		
		}
	  ?>
	  
  </tr>
  
 	<?
  	}}}
	?>
  
</table>
</body>
</html>
