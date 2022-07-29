<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
	print "login0=". $_SESSION[login0]. "<br>";
	//print "password0=".md5($_SESSION[password0])."<br>";
	print "password0=".$_SESSION[password0]."<br>";
	print "nama0=". $_SESSION[nama0]. "<br>";
	print "c_profile0=".$_SESSION[c_profile0]."<br>";
?>


<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


 
<form action="event_add_process.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data" target="_blank">

<table>	
CUTI ONLINE :
<tr><td colspan="2"><hr size="0" noshade></td></tr>


   
   <tr class="field" align="left"><td bgcolor="aqua">USERID</td><td><input type="text" name="userid" size="12" maxlength="12" class="wselect" value="<?=$_SESSION[login0]?>"></td> </tr>
   

   <tr class="field" align="left"><td bgcolor="aqua">NAMA</td><td><input type="text" name="nama" size="12" maxlength="12" class="wselect" value="<?=$_SESSION[nama0]?>"></td> </tr>

   
   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_MULAI</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input1]?>" readonly="" name="tgl_input1" class="wselect"><a href="javascript:showCal('Calendar1');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>
   

   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_SELESAI</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input2]?>" readonly="" name="tgl_input2" class="wselect"><a href="javascript:showCal('Calendar2');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>


   
   	<tr>
   	<td>

	<input class="tmbl" type="SUBMIT" value="ENTER">
	
	</td>
   	</tr>
	
<tr><td colspan="2"><hr size="0" noshade></td></tr>

</table>

</form>

<script language="JavaScript" src="../../js/cal2.js"></script>
<script language="JavaScript" src="../../js/cal_conf2.js"></script>

 

</body>
</html>
