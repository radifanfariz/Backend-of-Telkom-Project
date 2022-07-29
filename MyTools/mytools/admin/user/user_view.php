<?
	//print "nik=".$_GET[nik]."<br>";	
?>


<?php
   //$nama=$HTTP_GET_VARS['nama'];
   $conn=mysql_connect("localhost", "root", "telkom");
   mysql_select_db ("dB_speedy", $conn);
   $aSQL = "SELECT *  from t_user where nik = '$_GET[nik]' ";
   $aQResult = mysql_query($aSQL, $conn);
?>


<?php


       while ($aRow = mysql_fetch_array($aQResult))
       {

       echo "<br>";

       $_nik = $aRow["nik"];
       $_nama = $aRow["nama"];
       $_c_profile = $aRow["c_profile"];
       
       echo "<br>";

       }

       mysql_free_result($aQResult);

?>


<?
	//print "c_profile=".$_GET[c_profile]."<br>";	
?>



<HTML>
<HEAD>
	<title>Modify Profile</title>
</HEAD>

<BODY bgcolor="#A8A8FF">

<h2>View User</h2>


<form action="user_list.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   <tr><td>NIK</td> <td>: <input type="Text" name="nik" readonly="yes" size="6" maxlength="6" value="<?echo $_nik?>"></td></tr>
   <tr><td>NAMA</td> <td>: <input type="Text" name="nama" readonly="yes" size="30" maxlength="30" value="<?echo $_nama?>"></td></tr>
   <tr><td>C PROFILE</td> <td>: <input type="Text" name="c_profile" readonly="yes" size="2" maxlength="2" value="<?echo $_c_profile?>"></td></tr>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Hidden" name="nik" value="<?echo $_GET[nik]?>">
   <input type="Submit" value="OKe">

</form>


</BODY>
</HTML>
