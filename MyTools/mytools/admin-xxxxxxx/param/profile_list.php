
<?php
	include "../../connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
   	$aSQL = "SELECT * from p_profile order by c_profile, l_profile, d_profile, nama_form asc";
	//$aQResult=mysqli_query($aSQL);
	$aQResult=mysqli_query($conn, $aSQL);
?>




<html>
<head>
	<title>Administrasi >> User</title>
	<LINK href="../../Style/epolice.css" type=text/css rel=STYLESHEET>			
</head>

<body bgcolor="#D8D8D8">

<center>


<table align="center" border="0" cellpadding="0" cellspacing="1" bgcolor="#FFC68C" height="100%" width="100%">
<tr><td align="center" bgcolor="FFFFFF"  background="../../images/background.jpg" valign="top">

<br>
<font color="#800000" size="4" face="Verdana, Arial, Helvetica"><b>Administrasi Profile</b></font>
<br><br>

<table border="0" cellpadding="1" cellspacing="1">
	<tr><td><a href="Profile_add.php" title="Add">Add Profile</a></td><td colspan="3" align="right" width="280">Existing Profile(s) : <?print $n?></td></tr>
</table>	
<br>

 <?php
 

   if($aQResult)
	{
         $n=mysqli_num_rows($aQResult);
         if($n==0)
		{
		 print "Data yang anda cari tidak ada<br>";
    		}
       else
       {{
	  ?>


<table border="0" cellpadding="1" cellspacing="1" bgColor=#cccccc>

	<tr class="head">
		<td align="center" width="30"><b>NO</b></td>
		<td align="center" width="70"><b>C_Profile</b></td>
		<td align="left" width="70"><b>L_Profile</b></td>
		<td align="left" width="90"><b>D_Profile</b></td>
		<td align="center" width="280"><b>Nama_Form</b></td>				
		<td colspan="2" align="center" width="100px"><b>ACTION</b></td>
	</tr>

<?php
	   $no=0;
       while ($aRow = mysqli_fetch_array($aQResult))
       {
	   $no++;	
       $c_profile_=$aRow["c_profile"]; //****************** kuncinya ************************
	   $l_profile_=$aRow["l_profile"]; //****************** kuncinya ************************
	   $d_profile_=$aRow["d_profile"]; //****************** kuncinya ************************
	   $nama_form_=$aRow["nama_form"]; //****************** kuncinya ************************
	   
	   
	   
	   $id_=$aRow["id"]; //****************** kuncinya ************************
	   

?>

	<tr class="isi">
		<td align="center"><?php print $no;?></td>
		<td align="center"><?php print $aRow["c_profile"];?></td>			
		<td align="left"><?php print $aRow["l_profile"];?></td>
		<td align="left"><?php print $aRow["d_profile"];?></td>
		<td align="left"><?php print $aRow["nama_form"];?></td>
		
		
		<td align="center"><a href='profile_modify.php?id=<?php print $id_?> '><img src="../../images/edit.gif" border="0"></a></td>
		<td align="center"><a href='profile_delete.php?id=<?php print $id_?> '><img src="../../images/delete.gif" border="0"></a></td>
	</tr>



<?php
       }
       mysqli_free_result($aQResult);	        
       }}

}

?>

</table>


</body>
</html>
