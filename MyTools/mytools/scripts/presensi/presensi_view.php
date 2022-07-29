<?php
	//include "auth.php";
?>

<?
	print "userid=".$_GET[userid]."<br>";
	//print "tahun=".$_GET[tahun]."<br>";
	//print "bulan=".$_GET[bulan]."<br>";
	//print "tgl=".$_GET[tgl]."<br>";
	$tgl_="tgl".$_GET[tgl]."<br>";
	//print "tgl_=".$tgl_."<br>";
	$waktu=$_GET[tahun]."-".$_GET[bulan]."-".$_GET[tgl];
	//print "waktu=".$waktu."<br>";
?>



<?
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$aSQL1 = "select * from t_presensi_list where date_presensi='$waktu' and userid='$_GET[userid]' ";
	//echo $aSQL1;
	$aQResult1=mysql_query($aSQL1);
?>



<?php
       while ($aRow1 = mysql_fetch_array($aQResult1)) // Query Result
       {
	   $_userid = $aRow1["userid"];
	   $_nama = $aRow1["nama"];
       $_date_presensi = $aRow1["date_presensi"];
       $_time_presensi = $aRow1["time_presensi"];
	   $_remoteaddress = $aRow1["remoteaddress"];
	   $_keterangan = $aRow1["keterangan"];
	   
       }
       mysql_free_result($aQResult1);	        
?>






<body bgcolor="#008080">
<center>



<FONT color="WHITE">
DETAIL DATA PERSONAL PRESENSI
</FONT>

<br><br>

<form name="inputan" action="presensi_list.php" method="post">

<table cellpadding="0" cellspacing="0" bgcolor="#00ffff" border="1">

<tr>
<td bgcolor="silver">USERID</td><td><input type="text" name="tanggal" maxlength="15" size="15" readonly="yes" value="<?=$_userid?>"></td>
</tr>


<tr>
<td bgcolor="silver">NAMA</td><td><input type="text" name="nama" maxlength="15" size="15" readonly="yes" value="<?=$_nama?>"></td>
</tr>

<tr>
<td bgcolor="silver">DATE</td><td><input type="text" name="date_presensi" maxlength="15" size="15" readonly="yes" value="<?=$_date_presensi?>"></td>
</tr>

<tr>
<td bgcolor="silver">TIME_ENTER</td><td><input type="text" name="time_presensi" maxlength="15" size="15" readonly="yes" value="<?=$_time_presensi?>"></td>
</tr>



<tr>
<td bgcolor="silver">REMOTEADDRESS</td><td><input type="text" name="remoteaddress" maxlength="15" size="15" readonly="yes" value="<?=$_remoteaddress?>"></td>
</tr>


<tr>
<td bgcolor="silver">KETERANGAN</td><td><input type="text" name="keterangan" maxlength="15" size="15" readonly="yes" value="<?=$_keterangan?>"></td>
</tr>


<tr><td height="5"></td><td></td></tr>
<tr>
<td></td><td><input type="submit" value="VIEW_CLOSE"></td>
</tr>
</table>
</form>



</body>
</html>


