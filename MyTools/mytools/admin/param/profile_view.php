<?
	session_start();
?>

<?
  //include "../..application.php";
?>


<?php


   $nama=$HTTP_GET_VARS['nama'];
   //$conn=mysql_connect("$db_host", "$db_login", "$db_password");
   $conn=mysql_connect("localhost", "root", "telkom");
   
   mysql_select_db ("dB_speedy", $conn);

   $aSQL = "SELECT *  from p_profile where c_profile = '$_GET[c_profile]' ";

   $aQResult = mysql_query($aSQL, $conn);


       while ($aRow = mysql_fetch_array($aQResult))
       {

       //echo $aRow["c_profile"];
       //echo $aRow["l_profile"];
       //echo $aRow["nama_form"];

       echo "<br>";

       $_c_profile = $aRow["c_profile"];
       $_l_profile = $aRow["l_profile"];
       $_nama_form = $aRow["nama_form"];
       
       echo "<br>";

       //echo $_c_profile;
       //echo $_l_profile;
       //echo $_nama_form;

       }

       mysql_free_result($aQResult);

?>




<HTML>
<HEAD>
	<title>Modify Profile</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>View Profile</h2>


<form action="profile_list.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>Id Profile</td> <td>: <input type="Text" name="c_profile" size="3" maxlength="3" disabled="yes" value="<?echo $_c_profile?>"></td></tr>
   <tr><td>DeskProfile</td> <td>: <input type="Text" name="l_profile" size="30" maxlength="30" disabled="yes" value="<?echo $_l_profile?>"></td></tr>
   <tr><td colspan="2">List file yang boleh diakses :</td></tr>
   <tr><td colspan="2"><textarea name="nama_form" cols="40" rows="10" disabled="yes"><? echo $_nama_form?></textarea></td></tr>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Submit" value="OKE">

</form>


</BODY>
</HTML>
