

<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<body bgcolor="#ABABD6">


 
<form action="event_add_process.php" method="POST" name="inputan" onsubmit="return validasi()" enctype="multipart/form-data" target="_blank">

<table>	
SHEDULE EVENT :
<tr><td colspan="2"><hr size="0" noshade></td></tr>

   
   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_EVENT1</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input1]?>" readonly="" name="tgl_input1" class="wselect"><a href="javascript:showCal('Calendar1');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>
   

   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_EVENT2</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input2]?>" readonly="" name="tgl_input2" class="wselect"><a href="javascript:showCal('Calendar2');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>

	
   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_EVENT3</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input3]?>" readonly="" name="tgl_input3" class="wselect"><a href="javascript:showCal('Calendar3');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>
   
   
   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_EVENT4</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input4]?>" readonly="" name="tgl_input4" class="wselect"><a href="javascript:showCal('Calendar4');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>
 

   <tr class="field" align="left"><td bgcolor="aqua">TANGGAL_EVENT5</td><td><input type="text" size="12" maxlength="12" value="<?=$_GET[tgl_input5]?>" readonly="" name="tgl_input5" class="wselect"><a href="javascript:showCal('Calendar5');"><img src="../../images/stop.gif" border="0" title="Click disini utk mengisi tanggal"></a></td> </tr>
   
   
	
   	<tr>
   	<td>

	<input class="tmbl" type="SUBMIT">
	
	</td>
   	</tr>
	
<tr><td colspan="2"><hr size="0" noshade></td></tr>

</table>

</form>

<script language="JavaScript" src="../../js/cal2.js"></script>
<script language="JavaScript" src="../../js/cal_conf2.js"></script>

 

</body>
</html>
