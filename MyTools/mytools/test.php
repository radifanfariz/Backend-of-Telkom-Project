<?php
	//pilih_tgl_awal
	include "connection/connection.php";
	$aSQL1 = "select distinct(date(timestamp)) as tanggal from images order by tanggal asc";
	//echo $aSQL1;
	$aQResult1=mysqli_query($conn, $aSQL1);
?>

	
<?php	
	//pilih_tgl_akhir
	include "connection/connection.php";
	$aSQL2 = "select distinct(date(timestamp)) as tanggal from images order by tanggal asc";
	//echo $aSQL2;
	$aQResult2=mysqli_query($conn, $aSQL2);
?>

<?php
//$_GET[pilih_tgl_awal] ="";
//$_GET[pilih_tgl_akhir]="";

	$pilih_tgl_awal = $_GET[pilih_tgl_awal];
	$pilih_tgl_akhir = $_GET[pilih_tgl_akhir];
?>


<?php
	//echo "pilih_tgl_awal = ". $_GET[pilih_tgl_awal]."<br>";
	//echo "pilih_tgl_akhir = ". $_GET[pilih_tgl_akhir]."<br>";
?>


<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->

<?php
  $btn="ENTER";
?>

<script language="JavaScript">


function jump()
{

	var backlink="test.php";
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



<form action="odp_di_uim_pilih_tanggal_process.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data">
<table>	
<font face="Comic Sans MS"size="-1" color="black"><b>JUMLAH PERTAMBAHAN ODP DI UIM (ACCESS_SERVO):</b></font>
<tr><td colspan="2"><hr size="0" noshade></td></tr>


	<tr>
	<td class="field"  align="left">Pilih tanggal awal:</td>
	<td>
		<select name="pilih_tgl_awal" onchange="jump()">
			<option value=''>Pilih tanggal awal</option>
		<?php while ($aRow1 = mysql_fetch_array($aQResult1)) {?>
			<option value="<?php echo $aRow1[tanggal]?>"<?php echo ($_GET[pilih_tgl_awal]==$aRow1[tanggal]?" selected":"")?>><?php echo $aRow1[tanggal]?></option>
		<?php
		}
		?>	
	</select>
	</td>
	</tr>
	

	<tr>
	<td class="field"  align="left">Pilih tanggal akhir:</td>
	<td>
		<select name="pilih_tgl_akhir" onchange="jump()">
			<option value='' >Pilih tanggal akhir</option>
		<?php while ($aRow2 = mysql_fetch_array($aQResult2)) {?>\
			<option value="<?php echo $aRow2[tanggal]?>"
			<?php if(trim($aRow2[tanggal])==$_GET[pilih_tgl_akhir]){
			echo 'selected';
			}
			?>
			><?php echo $aRow2[tanggal]?></option>
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


<!--- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx --->









</body>
</html>
