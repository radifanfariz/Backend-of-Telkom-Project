<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>





<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	//$aSQL = "Select * from t_hotnews where id=1";
	$aSQL = "Select * from t_hotnews where id=$_GET[id]";
	
	
	$qry=mysql_query($aSQL);
?>
	
	

<body bgcolor="#CA95FF">
<table>
<table width="600" border="0" align="center">

<center>
<font face="Arial" color="teal" size="+2">
<B>
HOTNEWS<P>
</font>
</B>


  <tr>
  
    <?php
	while ($row = mysql_fetch_array ($qry)) 
	{{{ {{{
	?>
	
	
	<?
	if ($row["pictures"]!="")
	{{{
	?>
	
    <td align="left">
	<!--- <img src="../../pictures/<?=$row["pictures"];?>" width="280" height="200" alt="" /> --->
	
	<a href="../../pictures/<?=$row["pictures"];?> "><img src="../../pictures/<?=$row["pictures"];?>" width="280" height="200" alt="Please click here for large picture...!!!" /></a>
	
	</td>
	
    <td width="700" align="left">
	<?php
		//Kalimat pada Block-I
		echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
		echo "<font color=blue>"."<B>".$row["subject"]."</B>"."</font>";
		echo "<br>"."<br>";
		
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
        				print "$news2";
				
				//exit;
				  break;
				}
		}}
	?>
	
	
	</td>
  	</tr>
  	<tr>
  
  
    <td colspan="2">
	<?php
		//Kalimat pada Block-II
		//$news1b = $row["news"];
		//$news2b = substr ($news1b,0,500);
		
		$news1b = $row["news"];
		$news2b = substr ($news1b,$i+1,$pj);
		
		
        print "$news2b";
		echo "<br>";
		
		echo "<B>"."<font color=brown>"."Pengirim, ".$row["userid"]."</font>"."</B>"."<BR>"."<BR>";
	?>
	
	

	<?
	}}}
	else
	{
		echo "<B>"."<font color=blue>"."Medan, ".$row["tgl_jam"]."</font>"."</B>"."<BR>";
		echo "<font color=blue>"."<B>".$row["subject"]."</B>"."</font>";
		echo "<br>";
		$news1 = $row["news"];
        $news2 = substr ($news1, 0, 500);
        print "$news2";
		echo "<br>";
		echo "<B>"."<font color=brown>"."Pengirim, ".$row["userid"]."</font>"."</B>"."<BR>"."<BR>";
	}
	  ?>
			
	  
	  
  </tr>
  
   	<?
  	}}} }}}
	?>
	
	
</table>


</body>
</html>
