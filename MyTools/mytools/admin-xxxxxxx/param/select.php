<body bgcolor="cyan">

<h2>PROFILE LIST</h2>

<?php


   $nama=$HTTP_GET_VARS['nama'];	
   $conn=mysql_connect("localhost", "medium", "telkom");
   mysql_select_db ("alumni", $conn);
   
   $aSQL = "SELECT *  from profile where c_profile='01'";
  
   $aQResult = mysql_query($aSQL, $conn);


       while ($aRow = mysql_fetch_array($aQResult))
       {
       echo $aRow["c_profile"];
       echo $aRow["l_profile"];
       echo $aRow["nama_form"];   
    }
       mysql_free_result($aQResult);	        

?>



</body>






