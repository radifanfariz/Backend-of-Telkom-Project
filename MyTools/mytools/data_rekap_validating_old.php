<?php
	//session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	//include "auth.php";
?>

<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
select witel, validating, count(validating) as jumlah from t_datek_bgest
group by witel, validating
order by witel, validating asc
	";
	$aQResult=mysql_query($aSQL);
?>


 
 
<html>
<head>
	<title>Administrasi >> user</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#D8D8D8">


<center>

<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">




<br>
<br>
<br>




<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
<br>
<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>REKAP COLLECTING</b></font><BR>
<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>DATA VALIDATING BGES</b></font>


<br><br>
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="left" width="50"><b>WITEL</b></td>
		<td align="left" width="50"><b>VALIDATING_STATUS</b></td>
		<td align="left" width="50"><b>JUMLAH</b></td>
	</tr>
	
<?php
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	
	   $total_jumlah+=+$aRow["jumlah"];
?>
	
	
	<tr class="isi">
		<td align="center"><?=$no;?></td>
		<td align="left"><a href="data_selected_validating.php?witel=<?print $aRow["witel"];?> & validating=<?print $aRow["validating"];?>"><?print $aRow["witel"];?></a></td>
		<td align="left"><?print $aRow["validating"];?></td>
		<td align="right"><?print $aRow["jumlah"];?></td>
		
		
	</tr>
<?}?>


  <tr bgcolor="#FFFF97">
    <td align="center"></td>
    <td><div align="left">TOTAL</div></td>
	<td><div align="left"></div></td>
	
	<td align="right"><?print number_format (($total_jumlah),0,'.',",");?></td>
  </tr>
  
  
  
</table>

</body>
</html>

