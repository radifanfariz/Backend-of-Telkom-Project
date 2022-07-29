<?php
	$aRow["tanggal_awal"]='';
	
	
	include "connection/connection.php";
	$aSQL1 = "
	SELECT min(DATE(TIMESTAMP)) AS tanggal_awal FROM images
	";
	//echo $aSQL1;
	$aQResult1=mysqli_query($conn, $aSQL1);
?>


<?php
		$no=0;
	   while ($aRow1 = mysqli_fetch_assoc($aQResult1))
       {
	   $no++;	
	   $tanggal_awal=$aRow1["tanggal_awal"];	
	   echo "tanggal_awal= ".$tanggal_awal."<br>";
	   }
?>
