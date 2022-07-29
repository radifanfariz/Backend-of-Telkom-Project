<?php
	include "../../connection/connection.php"; 
	$aSQL1 = "select distinct(area) from p_sto order by id asc";
	$aQResult1=mysql_query($aSQL1);
	
	$aSQL2 = "select distinct(sto) from p_sto 
	where area like '$_GET[pilih_area]' 
	order by sto asc";
	$aQResult2=mysql_query($aSQL2);
	
	$aSQL3 = "select distinct(packet) from p_packet 
	order by packet asc";
	$aQResult3=mysql_query($aSQL3);
	
	$aSQL4 = "select * from p_survey order by id asc";
	$aQResult4=mysql_query($aSQL4);
	
?>



	 
<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php
	$pilih_area = $_GET[pilih_area];
	$pilih_sto = $_GET[pilih_sto];
	$pilih_packet = $_GET[pilih_packet];
	
	
?>

<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?
  $btn="E N T E R";
?>

<script language="JavaScript">
function jump()
{
	var backlink="filtering_cascading.php";
	var a=document.inputan.pilih_area.value;
	var b=document.inputan.pilih_sto.value;
	var c=document.inputan.pilih_packet.value;

	var k=document.inputan.cmdOk.value;
	var jumpvalue="?btn="+k+"&pilih_area="+a+"&pilih_sto="+b+"&pilih_packet="+c
	location.href=(backlink+jumpvalue);
}
</script>



<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php

// nomor 0
if($_GET[pilih_area]==null and $_GET[pilih_sto]==null and $_GET[pilih_packet]==null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/connection.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, area, sto, paket, pekerjaan, persetujuan_anggaran, survey_status, survey_tgl, document_status, document_tgl, percepatan_status, percepatan_tgl, logistic_status, logistic_tgl, physic_status, physic_tgl, keterangan from t_lop
order by id asc ) aa ";
   }

   
elseif($_GET[pilih_area]!=null and $_GET[pilih_sto]==null and $_GET[pilih_packet]==null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/connection.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, area, sto, paket, pekerjaan, persetujuan_anggaran, survey_status, survey_tgl, document_status, document_tgl, percepatan_status, percepatan_tgl, logistic_status, logistic_tgl, physic_status, physic_tgl, keterangan from t_lop
   	where area like '$_GET[pilih_area]'
order by id asc ) aa ";
   }
   
   
   
elseif($_GET[pilih_area]!=null and $_GET[pilih_sto]!=null and $_GET[pilih_packet]==null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/connection.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, area, sto, paket, pekerjaan, persetujuan_anggaran, survey_status, survey_tgl, document_status, document_tgl, percepatan_status, percepatan_tgl, logistic_status, logistic_tgl, physic_status, physic_tgl, keterangan from t_lop
	where area like '$_GET[pilih_area]' and sto like '$_GET[pilih_sto]'
order by id asc ) aa ";
   }
   

      
elseif($_GET[pilih_area]!=null and $_GET[pilih_sto]!=null and $_GET[pilih_packet]!=null) 
   {
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   include '../../connection/connection.php';
   $aSQL = "select @rownum:=@rownum+1 as rownum,aa.* from
   (select @rownum:=0) as r,
   (select id, area, sto, paket, pekerjaan, persetujuan_anggaran, survey_status, survey_tgl, document_status, document_tgl, percepatan_status, percepatan_tgl, logistic_status, logistic_tgl, physic_status, physic_tgl, keterangan from t_lop
	where area like '$_GET[pilih_area]' and sto like '$_GET[pilih_sto]' and paket like '$_GET[pilih_packet]'
order by id asc ) aa ";
   }
   
 end  
 
?>



 
<form action="lop_add1_process.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data" target="_blank">

<table>	
Filtering Cascading
<tr><td colspan="2"><hr size="0" noshade></td></tr>

	<!--- 1 --->
	<tr>
	<td class="field" bgcolor="teal"align="left">Pilih Area:</td>
	<td>
		<select name="pilih_area" onchange="jump()">
			<option value=''></option>
		<?while ($aRow1 = mysql_fetch_array($aQResult1)) {?>
			<option value="<?=$aRow1[area]?>"<?=($_GET[pilih_area]==$aRow1[area]?" selected":"")?>><?=$aRow1[area]?></option>
		<?}?>	
	</select>
	</td>
	</tr>
	
	
	<!--- 2 --->
	<tr>
	<td class="field"  bgcolor="teal" align="left">Pilih STO:</td>
	<td>
		<select name="pilih_sto" onchange="jump()">
			<option value='' >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
		<?while ($aRow2 = mysql_fetch_array($aQResult2)) {?>\
			<option value="<?=$aRow2[sto]?>"
			<?if(trim($aRow2[sto])==$_GET[pilih_sto]){
			echo 'selected';
			}?>
			><?=$aRow2[sto]?></option>
		<?}?>	
	</select>
	</td>
	</tr>	


	
	<!--- 3 --->
	<tr>
	<td class="field"  bgcolor="teal" align="left">Pilih Packet:</td>
	<td>
		<select name="pilih_packet" onchange="jump()">
			<option value='' ></option>
		<?while ($aRow3 = mysql_fetch_array($aQResult3)) {?>\
			<option value="<?=$aRow3[packet]?>"
			<?if(trim($aRow3[packet])==$_GET[pilih_packet]){
			echo 'selected';
			}?>
			><?=$aRow3[packet]?></option>
		<?}?>	
	</select>
	</td>
	</tr>	


   <tr class="field" align="left"><td bgcolor="aqua">KETERANGAN</td> <td><input type="Text" name="keterangan" size="20" maxlength="50"></td></tr>
   
   
	
   	<tr>
   	<td>
	<input class="tmbl" type="SUBMIT" value="<?=$btn?>" name="cmdOk">
	</td>
   	</tr>
	
<tr><td colspan="2"><hr size="0" noshade></td></tr>

</table>

</form>





<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


	 

 

</body>
</html>
