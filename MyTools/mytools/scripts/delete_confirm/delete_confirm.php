<?php
	//include "auth.php";
?>



<body bgcolor="red">



</body>
</html>



<?
echo "booking_group=".$_GET[booking_group]."<BR>";
echo "using_date=".$_GET[using_date]."<BR>"."<br>";

$booking_group=$_GET[booking_group];
$using_date=$_GET[using_date];
?>

<font color="white">


<form action="databooking_delete_process.php" method="POST">
 <table>
 Delete Data Booking
			<tr><td colspan="2"><hr size="0" noshade></td></tr>
      		
			<tr class="head">
 			<td valign="top" colspan="0">Apakah Anda yakin untuk dihapus?
    		<input type="radio" name="konfirmasi" value="yes" >Yes
    		<input type="radio" name="konfirmasi" value="no" checked>No
  			</tr>
			
			<input type="Hidden" name="booking_group" value="<?=$_GET[booking_group]?>">
   			<input type="Hidden" name="using_date" value="<?=$_GET[using_date]?>">
		
      		<tr><td colspan="2"><hr size="0" noshade></td></tr>
   </table>	
   
   <input type="Submit" value="EXECUTE">


</form>



