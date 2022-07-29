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
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
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
       }
       mysql_free_result($aQResult1);	        
?>







<body bgcolor="#008080">
<center>


<script LANGUAGE=JAVASCRIPT TYPE="text/javascript" >

function cek()
{
 
 	var a=document.inputan.nama.value;
	var b=document.inputan.alamat.value;
	var c=document.inputan.notel.value;
	

 if(a=='')
 	{
    alert('Silahkan isi Nama (yang booking order) ...!!!');
 	return false;
 	}

  	else if(b=='')
 	{
 	alert('Silahkan isi Alamat (yang booking order)...!!!');
	return false;
 	}
	
 	else if(c=='')
 	{
 	alert('Silahkan isi Notel (yang booking order) ...!!!');
	return false;
 	}	
	
	
 else
 {return true;}
}

</script>	

<FONT color="WHITE">
UPDATE DATA BOOKING WISMA AGAPE, GKPI TOMOK SAMOSIR
</FONT>

<br><br>

<form name="inputan" action="kamar_list.php" method="post" onSubmit="return cek()">

<table cellpadding="0" cellspacing="0" bgcolor="#00ffff" border="1">

<tr>
<td bgcolor="silver">USING_DATE</td><td><input type="text" name="tanggal" maxlength="7" size="7" readonly="yes" value="<?=$waktu?>"></td>
</tr>

<tr>
<td bgcolor="silver">BOOKING_GROUP</td><td><input type="text" name="booking_group" maxlength="7" size="7" readonly="yes" value="<?=$_booking_group?>"></td>
</tr>

<tr>
<td bgcolor="silver">CUSTOMER NAME</td><td><input type="text" name="nama" maxlength="50" size="50" readonly="yes" value="<?=$_nama?>"></td>
</tr>

<tr>
<td bgcolor="silver">CUSTOMER PHONE</td><td><input type="text" name="notel" maxlength="15" size="15" readonly="yes" value="<?=$_notel?>"></td>
</tr>

<tr>
<td bgcolor="silver">CUSTOMER ADDRESS</td><td><input type="text" name="alamat" maxlength="150" size="50" readonly="yes" value="<?=$_alamat?>"></td>
</tr>



<tr>
<td bgcolor="silver">ROOM_NAME</td><td><input type="text" name="nama_kamar" maxlength="50" size="50" readonly="yes" value="<?=$_nama_kamar?>"></td>
</tr>


<tr>
<td bgcolor="silver">CUSTOMER_DOWNPAYMENT</td><td><input type="text" name="book_downpayment" maxlength="150" size="50" readonly="yes" value="<?=$_book_downpayment?>"></td>
</tr>

<!---  --->
<tr>
<td bgcolor="silver">CUSTOMER_DESCRIPTION</td><td><input type="text" name="customer_description" maxlength="150" size="50" readonly="yes" value="<?=$_customer_description?>"></td>
</tr>

<tr>
<td bgcolor="gray">ID_ENTER</td><td><input type="text" name="id_enter" maxlength="150" size="50" readonly="yes" value="<?=$_id_enter?>"></td>
</tr>

<tr>
<td bgcolor="gray">DATETIME_ENTER</td><td><input type="text" name="datetime_enter" maxlength="150" size="50" readonly="yes" value="<?=$_datetime_enter?>"></td>
</tr>







<input type="Hidden" name="nama_kamar" value="<?=$_GET[nama_kamar];?>">
<input type="Hidden" name="tahun" value="<?=$_GET[tahun];?>">
<input type="Hidden" name="bulan" value="<?=$_GET[bulan];?>">
<input type="Hidden" name="tgl" value="<?=$_GET[tgl];?>">


<tr><td height="5"></td><td></td></tr>
<tr>
<td></td><td><input type="submit" value="VIEW_CLOSE"></td>
</tr>
</table>
</form>



</body>
</html>



<?php
/**
include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
$aSQL = "UPDATE t_booking_frame set tgl01 ='1'
where nama_kamar='$_GET[nama_kamar]' and tahun='$_GET[tahun]' and bulan='$_GET[bulan]' ";
$aQResult=mysql_query($aSQL);
**/
?>






<script javascript="JavaScript">
		//location.href="index.php";
</script>