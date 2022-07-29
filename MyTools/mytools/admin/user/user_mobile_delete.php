<?php
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";

//echo "link=".$_GET[link]."<br>";
//print "idx=".$_GET[idx]."<br>";

	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  $aSQL3 = "SELECT * from t_user_mobile where idx = $_GET[idx]";
	
  $aQResult3=mysqli_query($conn, $aSQL3);
	
       while ($aRow3 = mysqli_fetch_assoc($aQResult3)) // Query Result
       {
	   print "c_profiles=".$aRow3["c_profile"];
	   $c_profiles = $aRow3["c_profile"];      // use "$c_$profiles" to object selected below
       }
       mysqli_free_result($aQResult3);	        
?>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL2 = "SELECT distinct(c_profile)  from p_profile";
	$aQResult2=mysqli_query($conn, $aSQL2);
?>




<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT *  from t_user_mobile where idx = $_GET[idx] ";
   	$aQResult = mysqli_query($conn, $aSQL);

       while ($aRow = mysqli_fetch_assoc($aQResult))
       {
       echo "<br>";
       $_idx = $aRow['idx'];
	     $_witel=$aRow['witel'];
	     $_nama = $aRow['nama'];
       $_c_profile = $aRow['c_profile'];
	     $_handphone = $aRow['handphone'];
	     $_imei = $aRow['imei'];
	     $_android_version = $aRow['android_version'];
	   

   
	   
       echo "<br>";
       }
       mysqli_free_result($aQResult);
?>





<HTML>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<BODY bgcolor="#A8A8FF">

<h2>Delete User Mobile</h2>




<form action="user_mobile_delete_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr class="head"><td>WITEL</td> <td><input type="Text" name="witel" readonly="yes" size="20" maxlength="50" value="<?php echo $_witel?>"></td></tr>
   <tr class="head"><td>NAMA</td> <td><input type="Text" name="nama" readonly="yes" size="50" maxlength="50" value="<?php echo $_nama?>"></td></tr>   
   <tr class="head"><td>HANDPHONE</td> <td><input type="Text" name="handphone" readonly="yes" size="20" maxlength="50" value="<?php echo $_handphone?>"></td></tr>
   <tr class="head"><td>IMEI</td> <td><input type="Text" name="imei" size="20" readonly="yes" maxlength="50" value="<?php echo $_imei?>"></td></tr>
   <tr class="head"><td>ANDROID_VERSION</td> <td><input type="Text" name="android_version" readonly="yes" size="50" maxlength="50" value="<?php echo $_android_version?>"></td></tr>   

   
   
   	<tr class="head">
	<td>User Profile :</td>
    <td>
		<select name="select_profile" size=1>
		<!--- <option>Pilih Profile</option> --->
		<?php
      while ($aRow2 = mysqli_fetch_assoc($aQResult2)) {?>
			<option value="<?php echo $aRow2['c_profile'];?>"  <?php if($aRow2['c_profile']==$c_profiles) echo "selected"?> > <!--- tampil dilayar --->
				<?php echo $aRow2['c_profile'];?><!--- dropdown menu --->
			</option>
		<?php
    }
    ?>	
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

   <input type="Hidden" name="idx" value="<?php echo $_GET['idx'];?>">
   <input type="Hidden" name="link" value="<?php echo $link;?>">
   

   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
