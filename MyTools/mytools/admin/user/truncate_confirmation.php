


<HTML>
<head>
	<title>Data Module</title>
	<LINK href="../../Style/style2.css" type=text/css rel=STYLESHEET>		
</head>

<BODY bgcolor="#A8A8FF">

<h2>Truncate Table...???</h2>




<form action="confirmasi_process.php" method="POST">
   
   <table>

   

   

   			<tr class="head">
 			<td valign="top" colspan="2">Apakah anda yakin...?
    		<input type="radio" name="confirm" value="yes" >Yes
    		<input type="radio" name="confirm" value="no" checked>No
  			</tr>
   
   
   <tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	

   <input type="Hidden" name="id" value="<?=$_id?>">
   <input type="Hidden" name="link" value="<?=$link?>">
   

   <input type="Submit" name="Submit" value="Execute">

</form>


</BODY>
</HTML>
