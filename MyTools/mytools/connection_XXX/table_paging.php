<LINK href="../css/font.css" type=text/css rel=STYLESHEET>	
<?
include 'connection.php';
	function tablePaging($sql, $setOfCol, $pageGroup, $pageRow, $page, $linkPage, &$sqlOutput) {
	global $conn;
	//echo $sql;
	// -- BEGIN -- Buat paging tabel
	#$pg = $_GET['pg'];										// parameter halaman
	$pg = $page;
	#$linkPage = 'modules.php?mname='.$mname.'&mfile='.$mfile.'&prod='.$prod.'&dt='.$datel.'&cat='.$kategori.'&opt='.$option.'&pg=';
	$linkPage .= '&pg=';
	if(!isset($pg) || $pg < 1) { $pg = 1; }
	#$pgGroup = 10;											// jumlah group paging
	$pgGroup = $pageGroup;
	#$pgRow = 25;											// jumlah baris tabel
	$pgRow = $pageRow;
	$firstRec = (($pg-1)*$pgRow) + 1;
	$lastRec  = $pg*$pgRow;
	$firstGroup = ((ceil($pg / $pgGroup)-1)*$pgGroup) + 1;
	$lastGroup  = ceil($pg / $pgGroup)*$pgGroup;
	$pgArea = ceil($pg / $pgGroup);
	$sql_count = "select count(*) as jlh from ( ".$sql." ) seqtbl";
    //echo "<pre>$sql_count</pre>";
	$stm = mysql_query($sql_count);
	$rstm=mysql_fetch_array($stm);
	$qstm=$rstm[jlh];
	if($qstm) { $jmlRec = $qstm; } else { $jmlRec = 0; }
	// Jumlah baris dibatasi 10.000 record :
	if($jmlRec>100000) { $jmlRec=10000; }
	// ;
	$jmlPage = ceil($jmlRec / $pgRow);
	$jmlGroup = ceil($jmlPage / $pgGroup);
	
	echo "<table><tr class='isi'><td>Jumlah record : </td><td><b>".number_format($jmlRec)."</b></td>";
	echo "<td>&nbsp;&nbsp;</td>";
	echo "<td>Halaman : </td>";
	if($pgArea > 1) { 
		echo "<td><a href='".$linkPage."1'>|<</a> </td>"; 
		echo "<td><a href='".$linkPage.($pg-$pgGroup)."'><<</a> </td>"; 
	}
	$i=$firstGroup;
	while($i<=$lastGroup && $i<=$jmlPage) {
		if($pg == $i) {
			echo "<td><b>".$i."</b> </td>";
		} else {
			echo "<td><a href='".$linkPage.$i."'>".$i."</a> </td>";
		}
		$i++;
	}
	if($pgArea < $jmlGroup) { 
		if($pg+$pgGroup > $jmlPage) { $nextPage = $jmlPage; } else { $nextPage = $pg+$pgGroup; }
		echo "<td><a href='".$linkPage.$nextPage."'>>></a> </td>"; 
		echo "<td><a href='".$linkPage.$jmlPage."'>>|</a> </td>"; 
	}
	echo "</tr></table>";
	
	$sql_rec = "select seqtb.* from ( ".$sql." ) as seqtb group by rownum ,".$setOfCol.
		" having rownum between ".$firstRec." and ".$lastRec." order by rownum";
	//$sql_rec = "select  seqtb.* from ( ".$sql." ) as seqtb group by ".$setOfCol.
		//" limit ".$firstRec." , ".$lastRec." ";
//echo $sql_rec;
	
	$sqlOutput = $sql_rec;
	// --  END  -- Buat paging tabel
}
?>
