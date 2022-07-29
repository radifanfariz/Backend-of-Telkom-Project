<?
   print "id = $_POST[id]"."<BR>";
   print "subject = $_POST[subject]"."<BR>";
   print "news = $_POST[news]"."<BR>";
?>


 
 
<?php
   	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  	$aSQL = "UPDATE t_hotnews set subject='$_POST[subject]', news ='$_POST[news]' where id=$_POST[id]";
  	$aQResult= mysql_query($aSQL);
?>
  
  






<script javascript="JavaScript">
        location.href="hotnews_list.php";
</script>




