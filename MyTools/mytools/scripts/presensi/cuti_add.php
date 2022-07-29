<?
	session_start();	//Harus pada baris dua, jika tidak akan ada warning, baris satu utk tanda <?
?>


<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


<script LANGUAGE=JAVASCRIPT TYPE="text/javascript" >

function cek()
{
 var a=document.inputan.tgl_input1.value;
 var b=document.inputan.tgl_input2.value;



 if(a=='')
 {
    alert('Please select tanggal mulai cuti ... !!!');
 	return false;
 }

 if(b=='')
 {
    alert('Please select tanggal selesai cuti ... !!!');
 	return false;
 }
 

   
  
 else
 {return true;}
}

</script>



<form name="inputan" action="cuti_add_process.php" method="post" onSubmit="return cek()">



<table>	
CUTI ONLINE :
<tr><td colspan="2"><hr size="0" noshade></td></tr>


   
   <tr class="field" align="left"><td bgcolor="aqua">USERID</td><td><input type="text" name="userid" readonly="yes" size="12" maxlength="12" class="wselect" value="<?=$_SESSION[login0]?>"></td> </tr>
   

   <tr class="field" align="left"><td bgcolor="aqua">NAMA</td><td><input type="text" name="nama" readonly="yes" size="12" maxlength="12" class="wselect" value="<?=$_SESSION[nama0]?>"></td> </tr>

   
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
