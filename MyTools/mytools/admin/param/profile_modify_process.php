<?php
  print "cc_profile=".$_POST[c_profile]."<br>";	
  print "l_profile=".$_POST[l_profile]."<br>";	
  print "nama_form=".$_POST[nama_form]."<br>";	  
?>


<?php
   include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
  $strSQL = "UPDATE p_profile set c_profile='$_POST[c_profile]', l_profile='$_POST[l_profile]', d_profile='$_POST[d_profile]', nama_form ='$_POST[nama_form]' where id='$_POST[id]'";
  $qry = mysqli_query($conn, $strSQL) or die ("Query salah");
?>





<script javascript="JavaScript">
        location.href="profile_list.php";
</script>




