<?php
/*
  	print "select_status_valdat change to: ".$_POST["select_status_valdat"]."<br>";
	print "id= ".$_POST["id"]."<br>";
*/
?>



			<form action="data_mytools_update_status_process_final.php" method="POST">
	      	<table>
			<tr class="head">
 			<td valign="top" colspan="2">Are you sure?
    		<input type="radio" name="confirm" value="yes" >Yes
    		<input type="radio" name="confirm" value="no" checked>No
			</table>
			
			
			<input type="Hidden" name="cust_name" value="<?php echo $_POST["cust_name"];?>">
			<input type="Hidden" name="cust_addr" value="<?php echo $_POST["cust_addr"];?>">
			<input type="Hidden" name="inst_addr" value="<?php echo $_POST["inst_addr"];?>">
			
			
			<input type="Hidden" name="id" value="<?php echo $_POST["id"];?>">
			
			<input type="Submit" name="Submit" value="UPDATE DATA">
   
			</form>

  			</tr>


