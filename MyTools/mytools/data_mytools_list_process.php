<?php

	//echo "pilih_tgl_awal = ". $_POST['pilih_tgl_awal']."<br>";
	//echo "pilih_tgl_akhir = ". $_POST['pilih_tgl_akhir']."<br>";
	
	$pilih_tgl_awal= $_POST['pilih_tgl_awal'];
	$pilih_tgl_akhir= $_POST['pilih_tgl_akhir'];
	$pilih_witel= $_POST['pilih_witel'];
	
	
	echo "pilih_tgl_awal = ". $pilih_tgl_awal;
	echo "<br>";
	echo "pilih_tgl_akhir = ". $pilih_tgl_akhir;
	echo "<br>";
	echo "pilih_witel = ". $pilih_witel;
	
	
	
?>


<?php
	if($pilih_tgl_awal !='' and $pilih_tgl_akhir !='' and $pilih_witel !='')
		{
		echo "OKE";
		}
	else
		{
		echo "<br>"."Silahkan pilih..."."<br>";
		}
?>


