
<?php
   //echo "DOCUMENT_ROOT=".$_SERVER["DOCUMENT_ROOT"]."<br>";   
?>


<?
//$target_path = "d:/xampplite/tmp/";
//$target_path = "d:/xampplite/htdocs/uploadfile/data/";
//$target_path = "d:/xampplite/htdocs/swords/ggn/web/admin/pots/uploadfile/data/";

$target_path = $_SERVER["DOCUMENT_ROOT"]."/webbasic/scripts/upload_csvfile_database/temporary_files/";
  



$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 

if(move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
    echo "The file ".  basename( $_FILES['uploadedfile']['name']). 
    " has been uploaded";
} else{
    echo "There was an error uploading the file, please try again!";
}



?>


<script javascript="JavaScript">
        //location.href="gangguan_langkat_list_resend.php?notel=<?echo $notel?>&group_download=<?echo $group_download?>";
		//location.href="directory.php";
		location.href="uploadfile_client_databaseserver_3.php";
		
</script>