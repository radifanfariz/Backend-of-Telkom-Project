<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>

<?

//echo "link=".$_GET[link]."<br>";
print "id=".$_GET[id]."<br>";

?>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL3 = "SELECT *  from t_user_web_bges where id = $_GET[id]";
	$aQResult3=mysql_query($aSQL3);
	
       while ($aRow3 = mysql_fetch_array($aQResult3)) // Query Result
       {
	   print "c_profiles=".$aRow3["c_profile"];
	   $c_profiles = $aRow3["c_profile"];      // use "$c_$profiles" to object selected below
       }
       mysql_free_result($aQResult3);	        
?>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL2 = "SELECT distinct(c_profile)  from p_profile";
	$aQResult2=mysql_query($aSQL2);
?>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT *  from t_user_web_bges where id = $_GET[id] ";
   	$aQResult = mysql_query($aSQL, $conn);

       while ($aRow = mysql_fetch_array($aQResult))
       {
       echo "<br>";
       $_id = $aRow["id"];
	   $_witel=$aRow["witel"];
	   $_unit=$aRow["unit"];
	   $_nama = $aRow["nama"];
	   $_userid = $aRow["userid"];
	   $_pass = $aRow["pass"];
       $_c_profile = $aRow["c_profile"];
	   $_handphone = $aRow["handphone"];
       echo "<br>";
       }
       mysql_free_result($aQResult);
?>





<HTML>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<BODY bgcolor="#A8A8FF">

<h2>Modify User</h2>




<form action="user_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr class="head"><td>WITEL</td> <td><input type="Text" name="witel" readonly="yes" size="20" maxlength="50" value="<?echo $_witel?>"></td></tr>
   <tr class="head"><td>UNIT</td> <td><input type="Text" name="unit" size="50" maxlength="50" value="<?echo $_unit?>"></td></tr>   
   <tr class="head"><td>NAMA</td> <td><input type="Text" name="nama" size="50" maxlength="50" value="<?echo $_nama?>"></td></tr>
   <tr class="head"><td>HANDPHONE</td> <td><input type="Text" name="handphone" size="20" maxlength="50" value="<?echo $_handphone?>"></td></tr>
   <tr class="head"><td>USERID</td> <td><input type="Text" name="userid" size="20" maxlength="50" value="<?echo $_userid?>"></td></tr>
   
   


   
   
   	<tr class="head">
	<td>User Profile :</td>
    <td>
		<select name="select_profile" size=1>
		<!--- <option>Pilih Profile</option> --->
		<?while ($aRow2 = mysql_fetch_array($aQResult2)) {?>
			<option value="<?=$aRow2[c_profile]?>"  <?if($aRow2[c_profile]==$c_profiles) echo "selected"?> > <!--- tampil dilayar --->
				<?=$aRow2[c_profile]?><!--- dropdown menu --->
			</option>
		<?}?>	
	</select>
	
	</td>
	</tr>

   
   

   			<tr class="head">
 			<td valign="top" colspan="2">Reset password to initial password?
    		<input type="radio" name="confirm" value="yes" >Yes
    		<input type="radio" name="confirm" value="no" checked>No
  			</tr>
   
   
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Hidden" name="id" value="<?=$_id?>">
   <input type="Hidden" name="link" value="<?=$link?>">
   

   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
