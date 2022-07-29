<?
	session_start();	//Harus digabung dlm satu group dengan baris dibawahnya
?>





<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<!---  --->



<?php


   	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	include '../../connection/table_paging.php';
   	$aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   	(select @rownum:=0) as r,
   	(select id, area_network, nama_perangkat, satuan, n, ng, tg, nb, np, tp, to_, avb, avs, rep, periode
	from t_performansi_ne
	order by periode asc ) aa ";
	
?>
	   
	   






<html>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<!--- <body bgcolor="#ABABD6"> --->
<body bgcolor="#FFD1A4">


<center>
<?
$setOfCol="id, area_network, nama_perangkat, satuan, n, ng, tg, nb, np, tp, to_, avb, avs, rep, periode";     								//************ ssi dgn data field yg di query
$linkPage="?";																	   		//************
tablePaging($aSQL, $setOfCol, 10, 5000, $_GET['pg'], $linkPage, $sqlRec);           	//************
//echo "<pre>$sqlRec</pre>"; //Tanpilkan Jeroan SQL Script
$aQResult=mysql_query($sqlRec);
?>



<table align="center" border="0" cellpadding="0" cellspacing="1">
<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="red" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="images/background.jpg" valign="top">
<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>LIST OF PERFORMANSI (NE)</b></font>
<br><br>






<table border="0" cellpadding="1" cellspacing="1" bgcolor="#B3FFB3">
	<a href="karyawan_add.php">AddNew</a> &nbsp;&nbsp;
	<a href="karyawan_list_excel.php">(Convert to Excel)</a> 
	
	<tr class="head">
		<td align="right" width="10"><b>No</b></td>
		<td align="center" width="70"><b>AREA NETWORK</b></td>
		<td align="right" width="160"><b>NAMA PERANGKAT</b></td>
		<td align="right" width="30"><b>SATUAN</b></td>
		<td align="right" width="30"><b>N</b></td>
		<td align="right" width="30"><b>NG</b></td>
		<td align="right" width="30"><b>TG</b></td>
		<td align="right" width="30"><b>NB</b></td>
		<td align="right" width="30"><b>NP</b></td>
		<td align="right" width="30"><b>TP</b></td>
		<td align="right" width="30"><b>TO</b></td>
		<td align="right" width="30"><b>AVB</b></td>
		<td align="right" width="30"><b>AVS</b></td>
		<td align="right" width="30"><b>REP</b></td>
		<td align="right" width="50"><b>PERIODE</b></td>

	</tr>
	
<?php
       //while ($aRow = mysql_fetch_assoc($aQResult))
	     while ($aRow = mysql_fetch_array($aQResult)) // Idem dgn yang diatasnya
       {
	   $no++;	
?>
	
	
	
	<tr class="isi">
		<td align="right"><?=$aRow["rownum"];?></td>

		<td align="left"><?=$aRow["area_network"];?></td>
		<td align="left"><?=$aRow["nama_perangkat"];?></td>
		<td align="left"><?=$aRow["satuan"];?></td>
	
		<td align="right"><?=$aRow["n"];?></td>
		<td align="right"><?=$aRow["ng"];?></td>
		<td align="right"><?=$aRow["tg"];?></td>
		<td align="right"><?=$aRow["nb"];?></td>
		<td align="right"><?=$aRow["np"];?></td>
		<td align="right"><?=$aRow["tp"];?></td>
		<td align="right"><?=$aRow["to_"];?></td>
		<td align="right"><?=$aRow["avb"];?></td>
		<td align="right"><?=$aRow["avs"];?></td>
		<td align="right"><?=$aRow["rep"];?></td>
		<td align="right"><?=$aRow["periode"];?></td>

	</tr>
	


	<?}?>

</table>

</body>
</html>
