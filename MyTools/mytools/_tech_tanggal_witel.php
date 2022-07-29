<?php
	//pilih_tanggal_awal
	include "connection/_connection.php";
	$aSQL1 = "
SELECT distinct(date(TIMESTAMP)) as tanggal
from t_sales_force
ORDER BY tanggal ASC
	";
	//echo $aSQL1;
	$aQResult1=mysqli_query($conn, $aSQL1);
?>

	
<?php	
	//pilih_tgl_akhir
	include "connection/_connection.php";
	$aSQL2 = "
SELECT distinct(date(TIMESTAMP)) as tanggal
from t_sales_force
ORDER BY tanggal ASC
	";
	//echo $aSQL2;
	$aQResult2=mysqli_query($conn, $aSQL2);
?>


<?php	
	//pilih_witel
	include "connection/_connection.php";
	$aSQL3 = "
SELECT distinct(witel) as witel
from t_sales_force
ORDER BY witel ASC
	";
	//echo $aSQL2;
	$aQResult3=mysqli_query($conn, $aSQL3);
?>



<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php
  $btn="ENTER";
?>

<script language="JavaScript">


function jump()
{

	var backlink="pilih_tanggal_list.php";
	var a=document.inputan.pilih_tgl_awal.value;
	var b=document.inputan.pilih_tgl_akhir.value;
	var k=document.inputan.cmdOk.value;
	
	
	var jumpvalue="?btn="+k+"&pilih_tgl_awal="+a+"&pilih_tgl_akhir="+b; //tidak boleh ada spasi
	
	
	location.href=(backlink+jumpvalue);
}

</script>

<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->




<html>
<head>
	<title>Data Module</title>
	<LINK href="Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">



<form action="_tech_tanggal_witel_process.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data">
<table>	
<font face="Comic Sans MS"size="-1" color="black"><b>SELECT PERIODE TANGGAL & WITEL</b></font>
<tr><td colspan="2"><hr size="0" noshade></td></tr>


	<tr>
	<td class="field"  align="left">Pilih tanggal awal:</td>
	<td>
		<select name="pilih_tgl_awal">
			<option value=''>Pilih tanggal awal</option>
		<?php while ($aRow1 = mysqli_fetch_array($aQResult1)) {?>
			<option value="<?php echo $aRow1['tanggal'];?>"><?php echo $aRow1['tanggal'];?></option>
		<?php
		}
		?>	
	</select>
	</td>
	</tr>
	

	<tr>
	<td class="field"  align="left">Pilih tanggal akhir:</td>
	<td>
		<select name="pilih_tgl_akhir">
			<option value='' >Pilih tanggal akhir</option>
		<?php while ($aRow2 = mysqli_fetch_array($aQResult2)) {?>\
			<option value="<?php echo $aRow2['tanggal']?>"><?php echo $aRow2['tanggal']?></option>
		<?php
		}
		?>	
	</select>
	</td>
	</tr>	

	<tr>
	<td class="field"  align="left">Pilih Witel:</td>
	<td>
		<select name="pilih_witel">
			<option value='' >Pilih Witel</option>
		<?php while ($aRow3 = mysqli_fetch_array($aQResult3)) {?>\
			<option value="<?php echo $aRow3['witel']?>"><?php echo $aRow3['witel']?></option>
		<?php
		}
		?>	
	</select>
	</td>
	</tr>	
	
   	<tr>
   	<td>
		
		<input class="tmbl" type="SUBMIT" value="<?php echo $btn?>" name="cmdOk">
		
	</td>
   	</tr>
	
<tr><td colspan="2"><hr size="0" noshade></td></tr>

</table>

</form>

</body>
</html>
