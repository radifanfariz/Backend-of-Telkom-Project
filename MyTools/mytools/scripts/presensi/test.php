
<?php
var_dump(checkdate(9, 31, 2012));
var_dump(checkdate(9, 30, 2001));
?>

<?php// $today = date("d M Y h:i A"); ?>
<?php// echo $today ?>



<?php
$timezone = "Asia/Jakarta";
if(function_exists('date_default_timezone_set')) date_default_timezone_set($timezone);
echo date('d-m-Y H:i:s');
?>




