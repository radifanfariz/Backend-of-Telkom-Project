<?
	session_start();	//Harus digabung dlm satu group dengan baris dibawahnya
	//print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".$_SESSION[password0]."<br>";
	//print "nama0=". $_SESSION[nama0]. "<br>";
	//print "c_profile0=".$_SESSION[c_profile0]."<br>";
?>



<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->
<?php
	
	//Pilih_tahun
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL1 = "select distinct(tahun) as tahun from t_presensi_frame ";
	//echo $aSQL2;
	$aQResult1=mysql_query($aSQL1);

	
	//Pilih_bulan
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL2 = "select distinct(bulan) as bulan from t_presensi_frame where tahun like '$_GET[pilih_tahun]'";  
	//echo $aSQL3;
	$aQResult2=mysql_query($aSQL2);
?>
<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php
	$pilih_tahun = $_GET[pilih_tahun];
	$pilih_bulan = $_GET[pilih_bulan];
?>


<?
  $btn="SHOW-ALL";
?>

<script language="JavaScript">


function jump()
{

	var backlink="presensi_list.php";
	var a=document.inputan.pilih_tahun.value;
	var b=document.inputan.pilih_bulan.value;
	var k=document.inputan.cmdOk.value;
	
	
	var jumpvalue="?btn="+k+"&pilih_tahun="+a+"&pilih_bulan="+b; //tidak boleh ada spasi
	
	
	location.href=(backlink+jumpvalue);
}

</script>

	<? 
	$bln=$pilih_bulan;
	
	if($bln==1)
		{$bln='January';}
	elseif($bln==2)
		{$bln='February';}
	elseif($bln==3)
		{$bln='March';}
	elseif($bln==4)
		{$bln='April';}
	elseif($bln==5)
		{$bln='May';}
	elseif($bln==6)
		{$bln='June';}
	elseif($bln==7)
		{$bln='July';}
	elseif($bln==08)
		{$bln='August';}
	elseif($bln==9)
		{$bln='September';}
	elseif($bln==10)
		{$bln='October';}
	elseif($bln==11)
		{$bln='Nopember';}
	elseif($bln==12)
		{$bln='December';}
	?>

	
	<!---  --->
	

<?php

   

if($_GET[pilih_tahun]==null and $_GET[pilih_bulan]==null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, tahun, bulan, tgl01, tgl02, tgl03, tgl04, tgl05, tgl06, tgl07, tgl08, tgl09, tgl10,
   tgl11, tgl12, tgl13, tgl14, tgl15, tgl16, tgl17, tgl18, tgl19, tgl20, tgl21, tgl22, tgl23, tgl24, tgl25, 
   tgl26, tgl27, tgl28, tgl29, tgl30, tgl31 from t_presensi_frame
   where tahun like year(now()) and bulan like mid(now(),6,2) 
   order by id asc limit 372) aa ";
   }
   
 
  elseif($_GET[pilih_tahun]!=null and $_GET[pilih_bulan]==null)  
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, tahun, bulan, tgl01, tgl02, tgl03, tgl04, tgl05, tgl06, tgl07, tgl08, tgl09, tgl10,
   tgl11, tgl12, tgl13, tgl14, tgl15, tgl16, tgl17, tgl18, tgl19, tgl20, tgl21, tgl22, tgl23, tgl24, tgl25, 
   tgl26, tgl27, tgl28, tgl29, tgl30, tgl31 from t_presensi_frame
   where tahun like '$_GET[pilih_tahun]'
   order by id asc limit 372) aa ";
   }
   
     
  elseif($_GET[pilih_tahun]!=null and $_GET[pilih_bulan]!=null)    
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, tahun, bulan, tgl01, tgl02, tgl03, tgl04, tgl05, tgl06, tgl07, tgl08, tgl09, tgl10,
   tgl11, tgl12, tgl13, tgl14, tgl15, tgl16, tgl17, tgl18, tgl19, tgl20, tgl21, tgl22, tgl23, tgl24, tgl25, 
   tgl26, tgl27, tgl28, tgl29, tgl30, tgl31 from t_presensi_frame
   where tahun like '$_GET[pilih_tahun]' and bulan like '$_GET[pilih_bulan]'
   order by id asc limit 372) aa ";
   } 

 end
   
?>	   
	   
	   
	   
 

	<!---  --->
<form action="presensi_list.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data">
<table>	
<tr><td colspan="2"><hr size="0" noshade></td></tr>



	<tr>
	<td class="field"  align="left">Pilih Tahun:</td>
	<td>
		<select name="pilih_tahun" onchange="jump()">
			<option value='' >Pilih_tahun</option>
		<?while ($aRow1 = mysql_fetch_array($aQResult1)) {?>\
			<option value="<?=$aRow1[tahun]?>"
			<?if(trim($aRow1[tahun])==$_GET[pilih_tahun]){
			echo 'selected';
			}?>
			><?=$aRow1[tahun]?></option>
		<?}?>	
	</select>
	</td>
	<?php
	print "Current Year ".(date ("Y"));
	?>
	</tr>	


	<tr>
	<td class="field"  align="left">Pilih Bulan:</td>
	<td>
		<select name="pilih_bulan" onchange="jump()">
			<option value='' >Pilih Bulan </option>
		<?while ($aRow2 = mysql_fetch_array($aQResult2)) {?>\
			<option value="<?=$aRow2[bulan]?>"
			<?if(trim($aRow2[bulan])==$_GET[pilih_bulan]){
			echo 'selected';
			}?>
			><?=$aRow2[bulan]?></option>
		<?}?>	
	</select>
	</td>
	</tr>	
	
	
	
	
   	<tr>
   	<td>
		
		<input class="tmbl" type="SUBMIT" value="<?=$btn?>" name="cmdOk">
		
	</td>
   	</tr>
	
<tr><td colspan="2"><hr size="0" noshade></td></tr>

</table>

</form>

<!---  --->
   
	   

<html>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">

<center>
<?
$setOfCol="id, userid, nama, tahun, bulan, tgl01, tgl02, tgl03, tgl04, tgl05, tgl06, tgl07, tgl08, tgl09, tgl10,
   tgl11, tgl12, tgl13, tgl14, tgl15, tgl16, tgl17, tgl18, tgl19, tgl20, tgl21, tgl22, tgl23, tgl24, tgl25, 
   tgl26, tgl27, tgl28, tgl29, tgl30, tgl31";			     								//************ ssi dgn data field yg di query
$linkPage="?";																	   		//************
tablePaging($aSQL, $setOfCol, 10, 5000, $_GET['pg'], $linkPage, $sqlRec);           	//************
//echo "<pre>$sqlRec</pre>"; //Tanpilkan Jeroan SQL Script
$aQResult=mysql_query($sqlRec);
?>





<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>PRSESENSI LIST</b></font>







<table border="0" cellpadding="1" cellspacing="1" bgcolor="#B3FFB3">
<a href="presensi_person.php">goto >>> Presensi Person</a>
	<tr class="head">
		<td align="center" width="20" bgcolor="aqua"><b>No</b></td>
		<td align="left" width="90" bgcolor="aqua"><b>USERID</b></td>
		<td align="left" width="90" bgcolor="aqua"><b>NAMA</b></td>
		<td align="center" width="90" bgcolor="aqua"><b>TAHUN</b></td>
		<td align="center" width="50" bgcolor="aqua"><b>BLN_TGL</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>01</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>02</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>03</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>04</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>05</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>06</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>07</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>08</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>09</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>10</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>11</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>12</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>13</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>14</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>15</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>16</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>17</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>18</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>19</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>20</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>21</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>22</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>23</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>24</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>25</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>26</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>27</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>28</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>29</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>30</b></td>
		<td align="center" width="50" bgcolor="yellow"><b>31</b></td>
		
	</tr>
	
<?php
       //while ($aRow = mysql_fetch_assoc($aQResult))
	     while ($aRow = mysql_fetch_array($aQResult)) // Idem dgn yang diatasnya
       {
	   //$no++;	
?>
	
	
	
	<tr class="isi">
		<td align="right" bgcolor="aqua"><?=$aRow["rownum"];?></a></td>
		<td align="left" bgcolor="silver"><?=$aRow["userid"];?></td>
		<td align="left" bgcolor="silver"><?=$aRow["nama"];?></td>
		
		<td align="center" bgcolor="silver"><?=$aRow["tahun"];?></td>
		<td align="center" bgcolor="silver"><?=$aRow["bulan"];?></td>
		
		<!---  --->
		<?if($aRow[tgl01]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl01"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl01]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl01"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl02]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl02"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl02]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl02"];?></font></a></td>
		<?}?>
		
		<!---  --->

		<?if($aRow[tgl03]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl03"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl03]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl03"];?></font></a></td>
		<?}?>
		
		<!---  --->

		<?if($aRow[tgl04]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl04"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl04]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl04"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl05]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl05"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl05]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl05"];?></font></a></td>
		<?}?>
		
		<!---  --->

		<?if($aRow[tgl06]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl06"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl06]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl06"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl07]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl07"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl07]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl07"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl08]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl08"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl08]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl08"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl09]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl09"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl09]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl09"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl10]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl10"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl10]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl10"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl11]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl11"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl11]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl11"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl12]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl12"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl12]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl12"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl13]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl13"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl13]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl13"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl14]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl14"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl14]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl14"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl15]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl15"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl15]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl15"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl16]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl16"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl16]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl16"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl17]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl17"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl17]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl17"];?></font></a></td>
		<?}?>
		
		<!---  --->
		
		<?if($aRow[tgl18]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl18"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl18]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl18"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl19]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl19"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl19]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl19"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl20]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl20"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl20]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl20"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl21]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl21"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl21]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl21"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl22]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl22"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl22]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl22"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl23]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl23"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl23]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl23"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl24]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl24"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl24]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl24"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl25]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl25"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl25]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl25"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl26]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl26"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl26]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl26"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl27]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl27"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl27]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl27"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl28]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl28"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl28]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl28"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl29]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl29"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl29]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl29"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl30]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl30"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl30]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl30"];?></font></a></td>
		<?}?>
		
		<!---  --->
		<?if($aRow[tgl31]=='0'){?>
		<td align="center" bgcolor="green"><font color="white"><?=$aRow["tgl31"];?></font></a></td>
		<?}?>
		
		<?if ($aRow[tgl31]=='1'){?>
		<td align="center" bgcolor="aqua"><?=$aRow["tgl31"];?></font></a></td>
		<?}?>
		<!---  --->

		
	</tr>
	


	<?}?>

</table>

</body>
</html>
