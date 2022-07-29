
	 
<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->


<?php
   	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	//include 'connection/table_paging.php';
   	$aSQL = "
SELECT date(timestamp) as tanggal, regional, witel, count(witel) as jumlah
from images
group by tanggal, regional, witel
order by regional, witel, tanggal asc
";
	
$aQResult=mysqli_query($conn, $aSQL);
	
	

$chartx = "
SELECT date(timestamp) as tanggal, regional, witel, count(witel) as jumlah
from images
group by tanggal, regional, witel
order by regional, witel, tanggal asc
";
	//echo "<pre>$chartx</pre>";
	$xchart=mysqli_query($conn, $chartx);
	$xchart1=mysqli_query($conn, $chartx); 
?>


<?php
	include("../FusionCharts_Professional/Code/PHP/Includes/FusionCharts.php");
?>
	
<head>
	<title>Data Module</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


<center>


 



<table align="center" border="0" cellpadding="0" cellspacing="1">

 
<!--- FOR GRAPH     --->

<?php
		$id=0;
		$tanggal="0000-00-00";
		$aRow["tanggal"]="0000-00-00";
		
		$strXML = "<chart caption='GRAPHIC DATA PRODUKTIVITAS MYTOOLS PER HARI' xAxisName='WITEL' yAxisName='JUMLAH DATA PROVISIONING YANG DICOLLECT DGN MYTOOLS' showValues='1' decimals='1' formatNumberScale='0' chartRightMargin='50'>";  
		while ($mchart1 = mysqli_fetch_array($xchart1)) 
       			{
				$id++;
				$tanggal=$aRow["tanggal"]; 
				$strXML .= "<set label='$mchart1[tanggal]' value='$mchart1[jumlah]' />\n"; 
				
				
				
				
				$strXML .= "<set value='' />\n"; 
  	   			
				}
  	   $strXML .= "</chart>";
	   echo renderChartHTML("../FusionCharts_Professional/Charts/Column3D.swf", "", $strXML, "myNext", 1000, 400, false);
?>


 
<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>
	<font color="blue" size="2" face="Verdana, Arial, Helvetica"><b></b></font><br>

	
	
	
						<tr class="head">
							<td align="center" width="30"><b>NO</b></td>
							<td align="left" width="80"><b>TANGGAL</b></td>
							<td align="left" width="80"><b>REGIONAL</b></td>
							<td align="left" width="80"><b>WITEL</b></td>
							<td align="right" width="80"><b>JUMLAH</b></td>
						</tr>
	

<?php
	   $no=0;
	   $total_jumlah=0;
	   
       while ($aRow = mysqli_fetch_array($aQResult))
       {
	   $no++;	
	   $total_jumlah+=+$aRow["jumlah"];
?>
	
	
						<tr class="isi">
							<td align="center"><?php echo $no; ?></td>
							<td align="left"><?php echo $aRow["tanggal"];?></td>
							<td align="left"><?php echo $aRow["regional"];?></td>
							<td align="left"><?php echo $aRow["witel"];?></td>
							<td align="right"><?php echo $aRow["jumlah"];?></td>
						
						</tr>
	
	

<?php
}
?>
<!--- </table>  --->
<br>


	</tr>
		<tr class="isi">
		<td align="right" bgcolor="lime"></td>
		<td align="left" bgcolor="lime">GRANDTOTAL</td>
<td align="right" bgcolor="lime"></td>
<td align="right" bgcolor="lime"></td>
		<td align="right" bgcolor="lime" title="Occupancy lebih besar dari 100%"><?php echo number_format(($total_jumlah),0,'.',",")  ;?></td>		
	</tr>
	
	
	
</table>

 
</body>
Source data: Mobile Apps: MyTools
</html>
</center>
