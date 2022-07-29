
<?php
include "../../connection/connection.php"; 
$aSQL = "SELECT * from p_witel_datel_sto";
$aQResult=mysqli_query($conn, $aSQL);
?>


<?php
$myFile = "witel_datel_sto.xls";
$fh = fopen($myFile, 'w') or die("can't open file");
fclose($fh);

$myFile = "witel_datel_sto.xls";
unlink($myFile);
?>




<?php
/*
//xxxxxxxx CONVERT INTO EXCEL xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
include "../../connection/connection.php";
$strSQL_excel ="
select 'witel', 'datel', 'sto'
UNION
(select witel, datel, sto
INTO OUTFILE 'e:/xampp/htdocs/oltnms/admin/param/witel_datel_sto.xls'
FIELDS TERMINATED BY '\t' 
LINES TERMINATED BY '\r\n'
from p_witel_datel_sto)";
$qry_excel = mysqli_query($strSQL_excel) or die ("Query salah2");
//xxxxxxxx SELECT KE DUA HARUS PAKAI KURUNG xxxxxxxxxxxxxxxxxxxxxxxxx

*/
?>



<html>
<head>
	<title>Administrasi >> User</title>
	<LINK href="../../Style/epolice.css" type=text/css rel=STYLESHEET>			
</head>

<body bgcolor="#D8D8D8">

<center>


<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">

<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>WITEL - DATEL - STO</b></font>
<br><br>


<br>




<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>

	<tr bgcolor="aqua">
	<td align="left" colspan="4">
	<a href=witel_datel_sto.xls target="_blank" title="Open/Save to optic_rasa_tembaga.xls"><font color="black" size="-1" face="Arial">[Convert into Excel]</font></a>
	</td>
	</tr>
	
	
	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="left" width="90"><b>WITEL</b></td>
		<td align="left" width="120"><b>DATEL</b></td>
		<td align="left" width="90"><b>STO</b></td>
	</tr>

<?php
       $no=0;
	   while ($aRow = mysqli_fetch_array($aQResult))
	   //while ($aRow = mysqli_fetch_assoc($aQResult))
			  
       {
	   $no++;	

?>

	<tr class="isi">
		<td align="center"><?php print $no;?></td>
		<td align="left"><?php print $aRow["witel"];?></td>			
		<td align="left"><?php print $aRow["datel"];?></td>
		<td align="left"><?php print $aRow["sto"];?></td>

	</tr>



<?php
}
?>

</table>


</body>
</html>
