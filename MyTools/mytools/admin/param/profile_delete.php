<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>



<?php
   //$nama=$HTTP_GET_VARS['nama'];
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL = "SELECT *  from p_profile where id = $_GET[id] ";
   $aQResult = mysqli_query($conn, $aSQL);
?>





<?php
       while ($aRow = mysqli_fetch_array($aQResult))
       {

       //echo $aRow["c_profile"];
       //echo $aRow["l_profile"];
       //echo $aRow["nama_form"];

       echo "<br>";
	   $_id = $aRow["id"];
       $_c_profile = $aRow["c_profile"];
       $_l_profile = $aRow["l_profile"];
	   $_d_profile = $aRow["d_profile"];
	   
       $_nama_form = $aRow["nama_form"];
       
       echo "<br>";

       //echo $_c_profile;
       //echo $_l_profile;
       //echo $_nama_form;

       }

       mysqli_free_result($aQResult);

?>




<HTML>
<HEAD>
	<title>Modify Profile</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>Delete Profile</h2>


<form action="profile_delete_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>C_Profile</td> <td>: <input type="Text" name="c_profile" size="3" maxlength="3" disabled="yes" value="<?php echo $_c_profile?>"></td></tr>
   <tr><td>L_Profile</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="30" disabled="yes" value="<?php echo $_l_profile?>"></td></tr>
   <tr><td>D_Profile</td> <td>: <input type="Text" name="d_profile" size="30" maxlength="30" disabled="yes" value="<?php echo $_d_profile?>"></td></tr>
   
   <tr><td colspan="2">List file yang boleh diakses :</td></tr>
   <tr><td colspan="2"><textarea name="nama_form" cols="50" rows="10" disabled="yes"><?php echo $_nama_form?></textarea></td></tr>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   	

   <input type="Hidden" name="id" value="<?php echo $_id?>">	
   
			<tr class="head">
 			<td colspan="0" bgcolor="red"><font color="white">Are You Sure?</td></font>
			<td bgcolor="RED">
			<input type="radio" name="confirm" value="yes" ><font color="white">Yes</font>
    		<input type="radio" name="confirm" value="no" checked><font color="white">No</font>
  			</td>
			</tr>
			
   </table>
   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
