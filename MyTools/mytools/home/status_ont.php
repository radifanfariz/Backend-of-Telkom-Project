
	 
<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->


<?php


	include "../../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	
   	$aSQL = "
select witel, status_ont, count(status_ont) as jumlah
from t_regfail_ont_offline
group by witel, status_ont
order by witel, status_ont asc
";
	$aQResult=mysql_query($aSQL);
	
	
	$chartx = "
select witel, count(witel) as jumlah
from t_regfail_ont_offline_recovered
group by witel
order by witel asc
";
	
	//echo "<pre>$chartx</pre>";
	$xchart=mysql_query($chartx);
	$xchart1=mysql_query($chartx); 



 
?>


<?php
	include("../../../../FusionCharts_Professional/Code/PHP/Includes/FusionCharts.php");
?>
	
<head>
	<title>Data Module</title>
	<LINK href="../../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


<center>

<!--- 
<Font size="+1" face="Calibri" color="blue"><b>
xyz
</FONT></b> --->
 



<table align="center" border="0" cellpadding="0" cellspacing="1">

 
<!--- FOR GRAPH     --->

<?php
		$strXML = "<chart caption='GRAPHIC RECOVERY REGFAIL SIP ONT OFFLINE PER WITEL' xAxisName='WITEL' yAxisName='JUMLAH RECOVERY REGFAIL SIP ONT OFFLINE' showValues='1' decimals='1' formatNumberScale='0' chartRightMargin='30'>";  
		while ($mchart1 = mysql_fetch_array($xchart1)) 
       			{
				$id++;
				$datetime_enter=$aRow["datetime_enter"];
	   			//$strXML .= "<set label='$mchart1[nama_mitra]' value='$mchart1[count_nama_mitra]' />\n"; 
				$strXML .= "<set label='$mchart1[witel]' value='$mchart1[jumlah]' />\n"; 
				//$strXML .= "<set value='' />\n"; 
				}
  	   $strXML .= "</chart>";
	   echo renderChartHTML("../../../../FusionCharts_Professional/Charts/Column3D.swf", "", $strXML, "myNext", 800, 400, false);
?>

<br>
<? 
print "<b>". "Medan, " .date("Y-m-d")."</b>"."<br>"."<br>"; 
?>

<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc><br>


	<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b>RECOVERY REGFAIL SIP ONT OFFLINE PER WITEL (TREG1)</b></font><br>



	<tr class="head">
		<td align="center" width="70"><b>&nbsp;&nbsp;NO</b></td>
		<td align="left" width="120"><b>&nbsp;&nbsp;WITEL</b></td>	
		<td align="right" width="120"><b>&nbsp;&nbsp;STATUS_ONT</b></td>	
		<td align="right" width=120"><b>&nbsp;&nbsp;JUMLAH</b></td>	
	</tr>
	
	
	<!--- zzzzzzzzzzzzzzzzzzzzz SUMMARY REPORT zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz ---> 
<?
       while ($aRow = mysql_fetch_array($aQResult))
       {
	   $no++;	

	   


?>
	
	
	<tr class="isi">
		<td align="center">&nbsp;&nbsp;<?=$no;?></td>
		<td align="left">&nbsp;&nbsp;<?print $aRow["witel"];?></td>
		<td align="right">&nbsp;&nbsp;<?print $aRow["status_ont"];?></td>
		<td align="right">&nbsp;&nbsp;<a href="recovery_regfail_selected.php?witel=<?print $aRow["witel"];?>"><?print number_format (($aRow["jumlah"]),0,'.',",");?></a></td>

		
	</tr>
	


<? 
}
?>
<!--- </table>  --->
<br>



	

</table> 

 
 
 
 
 
 
 
 
 
 
 <p>&nbsp;</p>
</body>
</html>
