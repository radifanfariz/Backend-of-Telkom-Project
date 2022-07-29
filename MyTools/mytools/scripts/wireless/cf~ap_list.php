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
   	(select witel, status_down, status_blank, status_up, grand_total, loc_id, tanggal_update
	from t_ap
	order by tanggal_update asc ) aa ";
	
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
$setOfCol="witel, status_down, status_blank, status_up, grand_total, loc_id, tanggal_update";     								//************ ssi dgn data field yg di query
$linkPage="?";																	   		//************
tablePaging($aSQL, $setOfCol, 10, 5000, $_GET['pg'], $linkPage, $sqlRec);           	//************
//echo "<pre>$sqlRec</pre>"; //Tanpilkan Jeroan SQL Script
$aQResult=mysql_query($sqlRec);
?>



<table align="center" border="0" cellpadding="0" cellspacing="1">
<!--- <table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="red" height="100%" width="100%"> --->
<!--- <tr><td align="center" bgcolor="FFFFFF"  background="images/background.jpg" valign="top"> --->
<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>LIST OF AP (ACCESS POINT)</b></font>
<br><br>






<table border="0" cellpadding="1" cellspacing="1" bgcolor="#B3FFB3">
	<a href="karyawan_add.php">AddNew</a> &nbsp;&nbsp;
	<a href="karyawan_list_excel.php">(Convert to Excel)</a> 
	
	<tr class="head">
		<td align="right" width="30"><b>No</b></td>
		<td align="center" width="50"><b>WITEL</b></td>
		<td align="right" width="120"><b>STAT_DOWN</b></td>
		<td align="right" width="90"><b>STAT_BLANK</b></td>
		<td align="right" width="90"><b>STAT_UP</b></td>
		<td align="right" width="90"><b>GRAND_TOTAL</b></td>
		<td align="right" width="120"><b>LOC_ID</b></td>
		<td align="center" width="120"><b>TGL_UPDATE</b></td>
		

		
	</tr>
	
<?php
       //while ($aRow = mysql_fetch_assoc($aQResult))
	     while ($aRow = mysql_fetch_array($aQResult)) // Idem dgn yang diatasnya
       {
	   $no++;	
?>
	
	
	
	<tr class="isi">
		<td align="right"><?=$aRow["rownum"];?></td>

		<td align="left"><?=$aRow["witel"];?></td>
		<td align="right"><?=$aRow["status_down"];?></td>
		<td align="right"><?=$aRow["status_blank"];?></td>
		<td align="right"><?=$aRow["status_up"];?></td>
		<td align="right"><?=$aRow["grand_total"];?></td>
		<td align="right"><?=$aRow["loc_id"];?></td>
		
		<td align="center"><?=$aRow["tanggal_update"];?></td>


		
	</tr>
	


	<?}?>

</table>

</body>
</html>
