<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "../../auth.php";
?>

<?php
	//echo "id=".$_GET[id]."<br>";
?>


<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<?php
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   $aSQL = "SELECT *  from p_profile where id = '$_GET[id]' ";
   $aQResult = mysqli_query($conn, $aSQL);
?>


<?php

       while ($aRow = mysqli_fetch_array($aQResult))
       {

       //echo $aRow["c_profile"];
       //echo $aRow["l_profile"];
       //echo $aRow["nama_form"];

       echo "<br>";

       $_c_profile = $aRow["c_profile"];
       $_l_profile = $aRow["l_profile"];
	   $_d_profile = $aRow["d_profile"];
	   
       $_nama_form = $aRow["nama_form"];
	   $_id = $aRow["id"];
	   
       
       echo "<br>";

       //echo $_c_profile;
       //echo $_l_profile;
       //echo $_nama_form;

       }

       mysqli_free_result($aQResult);

?>


<?php
	//print "c_profile=".$_GET[c_profile]."<br>";	
?>



<HTML>
<HEAD>
	<title>Modify Profile</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>Modify Profile</h2>


<form action="profile_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>Id Profile</td> <td>: <input type="Text" name="c_profile" size="3" maxlength="3" value="<?php echo $_c_profile?>"></td></tr>
   <tr><td>Lable Profile</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="30" value="<?php echo $_l_profile?>"></td></tr>
   <tr><td>Description Profile</td> <td>: <input type="Text" name="d_profile" size="30" maxlength="30" value="<?php echo $_d_profile?>"></td></tr>
   
   <tr><td colspan="2">List file yang boleh diakses :</td></tr>
   <tr><td colspan="2"><textarea name="nama_form" cols="80" rows="10"><?php echo $_nama_form?></textarea></td></tr>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Hidden" name="id" value="<?php echo $_id?>">
   <input type="Hidden" name="batal" value="batal">	
   <input type="Submit" value="Update">
   <input type="Submit" name="Submit" value="    Batal   ">

</form>


</BODY>
</HTML>
