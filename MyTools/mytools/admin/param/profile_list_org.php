<?php
 	//include "../../../application.php";
    //include "../../auth.php";
?>

<body bgcolor="#ABABD6">

<h2>PROFILE LIST</h2>
<a href="profile_add.php">Add Profile</a>
<?php


   //$nama=$HTTP_GET_VARS['nama'];	
   
   $n=0; 
   $conn=mysql_connect("localhost", "root", "telkom");
   mysql_select_db ("dB_speedy", $conn);
   $aSQL = "SELECT *  from p_profile";
   $aQResult = mysql_query($aSQL, $conn);

   if($aQResult)
	{
         $n=mysql_num_rows($aQResult);
         if($n==0)
		{
		 print "Data yang anda cari tidak ada<br>";
    		}
       else
       {{
       echo "<TABLE bgcolor=yellow>";	
       print "<TR bgcolor=#800FF>";
	   
       print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."No"."</font>"."</TD>";	
       print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."c_profile"."</font>"."</TD>";	
	   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."l_profile"."</font>"."</TD>";
	   print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."Nama_Form"."</font>"."</TD>";
	   
       print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."view"."</font>"."</TD>";
       print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."modify"."</font>"."</TD>";
       print "<TD align=center>"."<font color=white size=+.5 face=arial, verdana>" ."delete"."</font>"."</TD>";
       print "</TR>";

       while ($aRow = mysql_fetch_array($aQResult))
       {
		$no++;	
       $cc_profile=$aRow["c_profile"]; //****************** kuncinya ************************

       echo "<TR bgcolor=white>";
       echo "<TD align=left>"."<font size=-2 face=arial, verdana>".$no."</font>"."</TD>";
	   echo "<TD align=left>"."<font size=-2 face=arial, verdana>".$aRow["c_profile"]."</font>"."</TD>";
       echo "<TD align=left>"."<font size=-2 face=arial, verdana>".$aRow["l_profile"]."</font>"."</TD>";
	   echo "<TD align=left>"."<font size=-2 face=arial, verdana>".$aRow["nama_form"]."</font>"."</TD>";
	   
       echo "<TD align=left>"."<font size=-2 face=arial, verdana>"."<a href='profile_view.php?c_profile=$cc_profile '>view</a>"."</font>"."</TD>";
       echo "<TD align=left>"."<font size=-2 face=arial, verdana>"."<a href='profile_modify.php?c_profile=$cc_profile '>modify</a>"."</font>"."</TD>";
       echo "<TD align=left>"."<font size=-2 face=arial, verdana>"."<a href='profile_delete.php?c_profile=$cc_profile' >delete</a>"."</font>"."</TD>";
       echo "</TR>";
       }
       mysql_free_result($aQResult);	        
       echo "</TABLE>";
       }}

}

?>



</body>






