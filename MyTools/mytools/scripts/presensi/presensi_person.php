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
	$aSQL1 = "SELECT distinct(year(date_presensi)) as tahun FROM t_presensi_list
	order by year(date_presensi) asc ";
	//echo $aSQL2;
	$aQResult1=mysql_query($aSQL1);

	
	//Pilih_bulan
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL2 = "SELECT distinct(month(date_presensi)) as bulan FROM t_presensi_list 
	where year(date_presensi) like '$_GET[pilih_tahun]'
	order by month(date_presensi) asc ";  
	//echo $aSQL3;
	$aQResult2=mysql_query($aSQL2);
	
	
	//Pilih_tanggal
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL3 = "SELECT distinct(day(date_presensi)) as tanggal FROM t_presensi_list 
	where year(date_presensi) like '$_GET[pilih_tahun]' and month(date_presensi) like '$_GET[pilih_bulan]' 
	order by day(date_presensi) asc ";  
	//echo $aSQL3;
	$aQResult3=mysql_query($aSQL3);

?>
<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php
	$pilih_tahun = $_GET[pilih_tahun];
	$pilih_bulan = $_GET[pilih_bulan];
	$pilih_tanggal = $_GET[pilih_tanggal];
	
?>


<?
  $btn="SHOW-ALL";
?>

<script language="JavaScript">


function jump()
{

	var backlink="presensi_person.php";
	var a=document.inputan.pilih_tahun.value;
	var b=document.inputan.pilih_bulan.value;
	var c=document.inputan.pilih_tanggal.value;
	
	var k=document.inputan.cmdOk.value;
	
	
	//var jumpvalue="?btn="+k+"&pilih_tahun="+a+"&pilih_bulan="+b; //tidak boleh ada spasi
	var jumpvalue="?btn="+k+"&pilih_tahun="+a+"&pilih_bulan="+b+"&pilih_tanggal="+c; //tidak boleh ada spasi
	
	
	
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
	elseif($bln==8)
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

   

if($_GET[pilih_tahun]==null and $_GET[pilih_bulan]==null and $_GET[pilih_tanggal]==null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress from t_presensi_list
   order by id desc) aa ";
   }
   
 
  elseif($_GET[pilih_tahun]!=null and $_GET[pilih_bulan]==null and $_GET[pilih_tanggal]==null)  
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress from t_presensi_list
   where year(date_presensi) like '$_GET[pilih_tahun]'
   order by id desc) aa ";
   }

   
     
  elseif($_GET[pilih_tahun]!=null and $_GET[pilih_bulan]!=null and $_GET[pilih_tanggal]==null)    
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress from t_presensi_list
   where year(date_presensi) like '$_GET[pilih_tahun]' and month(date_presensi) like '$_GET[pilih_bulan]'
   order by id desc) aa ";
   }
   
 
  elseif($_GET[pilih_tahun]!=null and $_GET[pilih_bulan]!=null and $_GET[pilih_tanggal]!=null)    
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/table_paging.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress from t_presensi_list
      where year(date_presensi) like '$_GET[pilih_tahun]' and month(date_presensi) like '$_GET[pilih_bulan]' and day(date_presensi) like '$_GET[pilih_tanggal]'
   order by id desc) aa ";
   } 

 end
   
?>	   
	   
	   
	   
	   
	   
	   
<?php
	//include("../../FusionCharts_Professional/Code/PHP/Includes/FusionCharts.php");
	//print "Current Year ".(date ("Y"));
?>
	   

	<!---  --->
<form action="presensi_person.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data">
<table>	
<tr><td colspan="2"><hr size="0" noshade></td></tr>



	<tr>
	<td class="field"  align="left">Pilih Tahun (using date):</td>
	<td>
		<select name="pilih_tahun" onchange="jump()">
			<option value='' >Pilih Tahun</option>
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
	<td class="field"  align="left">Pilih Bulan (using date):</td>
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
	
	<!---  --->
		<tr>
	<td class="field"  align="left">Pilih Tanggal (using date):</td>
	<td>
		<select name="pilih_tanggal" onchange="jump()">
			<option value='' >Pilih Tanggal </option>
		<?while ($aRow3 = mysql_fetch_array($aQResult3)) {?>\
			<option value="<?=$aRow3[tanggal]?>"
			<?if(trim($aRow3[tanggal])==$_GET[pilih_tanggal]){
			echo 'selected';
			}?>
			><?=$aRow3[tanggal]?></option>
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
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<!--- <body bgcolor="#ABABD6"> --->

<body bgcolor="olive">

<center>
<?
$setOfCol="id, userid, nama, date_presensi, time_presensi, code_presensi, remoteaddress";				//************ ssi dgn data field yg di query
$linkPage="?";																	   		//************
tablePaging($aSQL, $setOfCol, 10, 5000, $_GET['pg'], $linkPage, $sqlRec);           	//************
//echo "<pre>$sqlRec</pre>"; //Tanpilkan Jeroan SQL Script
$aQResult=mysql_query($sqlRec);
?>





<font color="#800000" size="2" face="Verdana, Arial, Helvetica"><b>DATA PRESENSI PERSONAL</b></font>







<table border="0" cellpadding="1" cellspacing="1" bgcolor="#B3FFB3">
<a href="presensi_list.php">goto >>>Presensi List</a>
	<tr class="head">
		<td align="center" width="20" bgcolor="aqua"><b>No</b></td>
		<td align="center" width="50" bgcolor="aqua"><b>USERID</b></td>
		<td align="left" width="90" bgcolor="aqua"><b>NAMA</b></td>
		<td align="center" width="90" bgcolor="aqua"><b>DATE</b></td>
		<td align="center" width="90" bgcolor="aqua"><b>TIME</b></td>
		<td align="center" width="90" bgcolor="aqua"><b>PRESENID</b></td>
		<td align="center" width="90" bgcolor="aqua"><b>REMOTEADDRESS</b></td>
		
	</tr>
	
<?php
	     while ($aRow = mysql_fetch_array($aQResult)) // Idem dgn yang diatasnya
       {
	   //$no++;	
?>
	
	
	
	<tr class="isi">
		<td align="right" bgcolor="yellow"><?=$aRow["rownum"];?></td>
		<td align="left" bgcolor="yellow"><?=$aRow["userid"];?></td>
		<td align="left" bgcolor="yellow"><?=$aRow["nama"];?></td>
		<td align="left" bgcolor="yellow"><?=$aRow["date_presensi"];?></td>
		<td align="center" bgcolor="yellow"><?=$aRow["time_presensi"];?></td>
		<td align="center" bgcolor="yellow"><?=$aRow["code_presensi"];?></td>
		<td align="left" bgcolor="yellow"><?=$aRow["remoteaddress"];?></td>
		

	</tr>
	


	<?}?>

</table>

</body>
</html>
