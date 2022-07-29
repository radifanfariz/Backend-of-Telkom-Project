
<?
	
	print "userid=".$_POST[userid]."<br>";
	print "subject=".$_POST[subject]."<br>";

	
?>






<?

$target_path = $_SERVER["DOCUMENT_ROOT"]."/school/pictures/";
$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 
if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {

    $namafile=basename( $_FILES['uploadedfile']['name']);
	echo "The file ".  basename( $_FILES['uploadedfile']['name'])." has been uploaded";
	
} else{
    echo "There was an error uploading the file, please try again!";
}
?>






<?
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	$strSQL = "INSERT INTO t_hotnews (userid, subject, news, pictures, tgl_jam) VALUES ('$_POST[userid]','$_POST[subject]','$_POST[news]','$namafile', now())";
	$qry = mysql_query($strSQL,$conn) or die ("Query salah");
?>

<script javascript="JavaScript">
        //location.href="hotnews.php";
</script>

