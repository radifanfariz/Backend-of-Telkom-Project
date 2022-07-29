<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>


<?php
	//include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	//$aSQL = "SELECT * FROM p_profile";
	//$aQResult=mysql_query($aSQL);
	//$NumMembers = mysql_num_rows($aQResult); 
	//$NumMembers = sprintf("%02d", $NumMembers+1);
	//print "Jlh Record = ".$NumMembers
?> 



<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "select max(c_profile) as max from p_profile";
	//$aQResult=mysqli_query("$aSQL");
	
	$aQResult=mysqli_query($conn, $aSQL);
	
	
	$NumMembers = mysqli_num_rows($aQResult); 
	$NumMembers = sprintf("%02d", $NumMembers+1);
	print "Jlh Record = ".$NumMembers
?> 


<HTML>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<BODY bgcolor="#A8A8FF">

<h2>Add Profile</h2>


<form action="profile_add_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>C Profile</td> <td>: <input type="Text" name="c_profile" size="2" maxlength="2" value="<?php print $NumMembers?>">Code_Profile</td></tr>
   <tr><td>L Profile</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="30">Lable_Profile</td></tr>
   <tr><td>D Profile</td> <td>: <input type="Text" name="d_profile" size="30" maxlength="30">Description_Profile</td></tr>
   
   <tr><td colspan="2">List file yang boleh diakses, contoh: <font color="red">/webbasic/.../.../xxx.php</font></td></tr>
   <tr><td colspan="2"><textarea name="nama_form" cols="80" rows="10"></textarea></td></tr>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <!--- <input type="Hidden" name="id" value="#c_profile#"> --->
   <input type="Hidden" name="batal" value="BATAL">	
   <input type="Submit" value="ENTER">

</form>


</BODY>
</HTML>
