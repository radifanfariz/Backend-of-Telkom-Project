
<?php
	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "
	

SELECT a.regional, a.witel, kendala_teknis, jumlah_kendala_teknis, kendala_nonteknis, jumlah_kendala_nonteknis
from
(SELECT regional, witel, kendala_teknis, count(kendala_teknis) as jumlah_kendala_teknis
from images 
where kendala_teknis != 'NIHIL'
group by regional, witel, kendala_teknis) as a
LEFT JOIN
(SELECT regional, witel, kendala_nonteknis, count(kendala_nonteknis) as jumlah_kendala_nonteknis
from images 
where kendala_nonteknis != 'NIHIL'
group by regional, witel, kendala_nonteknis) as b
ON a.witel = b.witel
	
	
	";
	$aQResult=mysqli_query($conn, $aSQL);
?>




