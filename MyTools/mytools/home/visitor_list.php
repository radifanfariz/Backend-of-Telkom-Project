


VISITOR LIST
<?php  
	   
	include "../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT *  from t_ip_visitor order by time_stamp desc";
	//$aQResult=mysqli_query($aSQL);
	$aQResult=mysqli_query($conn, $aSQL);


   echo "<TABLE bgcolor=yellow>";
		
   print "<TR bgcolor=#800FF>";
   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."No"."</font>"."</TD>";		
   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."TIME_STAMP"."</font>"."</TD>";	
   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."USERID"."</font>"."</TD>";		
   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."NAMA"."</font>"."</TD>";		
   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."IP ADDRESS"."</font>"."</TD>";		
   print "</TR>";
   
 	$no=0;
   while ($aRow = mysqli_fetch_array($aQResult))   
   {
	$no++;	
	echo "<TR bgcolor=white>";
	echo "<TD align=left>"."<font size=+.5 face=arial, verdana>".$no."</a>"."</font>"."</TD>";
	echo "<TD align=left>". "<font size=+.5 face=arial, verdana>".$aRow["time_stamp"]."</font>"."</TD>";
	echo "<TD align=left>". "<font size=+.5 face=arial, verdana>".$aRow["userid"]."</font>"."</TD>";
	echo "<TD align=left>". "<font size=+.5 face=arial, verdana>".$aRow["nama"]."</font>"."</TD>";
	echo "<TD align=left>". "<font size=+.5 face=arial, verdana>".$aRow["ip_address"]."</font>"."</TD>";
	echo "</TR>";

}


	mysqli_free_result($aQResult);
	        
	echo "</TABLE>";



?>


