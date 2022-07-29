<?php
	include "../../auth.php";
?>

<?php
  print "id=".$_GET[id]."<br>";	
?>
 

<?php
   //$nama=$HTTP_GET_VARS['nama'];
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT *  from t_hotnews where id like '$_GET[id]'";
   $aQResult = mysql_query($aSQL);
?>


<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
       echo "<br>";
       $_userid = $aRow["userid"];
       $_subject = $aRow["subject"];
	   $_news = $aRow["news"];
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

<h2>Modify Hotnews</h2>




<form action="hotnews_modify_process.php" method="POST">
   
   <table>
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   

   
   <tr class="head"><td>userid</td> <td><input type="Text" name="userid" size="30" maxlength="30" readonly="yes" value="<?echo $_userid?>"></td></tr>
   <tr class="head"><td>SUBJECT</td> <td><input type="Text" name="subject" size="30" maxlength="30" value="<?echo $_subject?>"></td></tr>
   <tr class="head"><td>NEWS</td> <td><input type="Text" name="news" size="30" maxlength="2000" value="<?echo $_news?>"></td></tr>
   
	<input type="Hidden" name="id" value="<?echo $_GET[id]?>">
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   

   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
