<?php 
 
 //importing dbDetails file 
 //require_once 'dbDetails.php';
 require_once 'dbDetails.php';
 
 	
 
 //this is our upload folder 
 $upload_path = "uploads/"; //ok
 
 //$server_ip = "36.89.34.66"; //medium
 $server_ip = "192.168.100.7"; //medium
 

 
 //creating the upload url 
 $upload_url = 'http://'.$server_ip.'/AndroidImageUpload/'.$upload_path; 
 //$upload_url = 'AndroidImageUpload/'.$upload_path; 

  
 //response array 
 $response = array(); 
 print "response=".$response."<br>";
 
 if($_SERVER["REQUEST_METHOD"]=='POST'){
 
	//checking the required parameters from the request 
	// if(isset($_POST["name"]) and isset($_FILES["image"]["name"])){
	
	
	//connecting to the database 
	$conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
	


	//getting name from the request 
	$idx = $_POST['idx'];
	$cust_name = $_POST['cust_name'];
	echo $cust_name
	
	// $cust_addr = $_POST['cust_addr'];
	// $inst_addr = $_POST['inst_addr'];
	// $google_addr = $_POST['google_addr'];
	// $stp_name = $_POST['stp_name'];


	//getting file info from the request 
	$fileinfo = pathinfo($_FILES['image']['name']);
	$fileinfo2 = pathinfo($_FILES['image2']['name']);
	$fileinfo3 = pathinfo($_FILES['image3']['name']);

	//getting the file extension 
	$extension = $fileinfo['extension'];
	$extension2 = $fileinfo2['extension'];
	$extension3 = $fileinfo3['extension'];
	
	//file url to store in the database 
	$file_url = $upload_url . getFileName() . '.' . $extension;
	$file_url2 = $upload_url . getFileName() . '.' . $extension2;
	$file_url3 = $upload_url . getFileName() . '.' . $extension3;




	date_default_timezone_set("Asia/Bangkok");
	$filename = date("Ymd") ."_". date("his")."a.". $extension;
	$filename2 = date("Ymd") ."_". date("his")."b.". $extension2;
	$filename3 = date("Ymd") ."_". date("his")."c.". $extension3;
	
	
	//file path to upload in the server 
	//$file_path = $upload_path . getFileName() . '.'. $extension; 
	$file_path = $upload_path . $filename . '.'. $extension; // medium222
	$file_path2 = $upload_path . $filename2 . '.'. $extension2; // medium222
	$file_path3 = $upload_path . $filename3 . '.'. $extension3; // medium222



	//trying to save the file in the directory 
	try{
	//saving the file 
	//move_uploaded_file($_FILES['image']['tmp_name'],$file_path);//ok


	move_uploaded_file($_FILES["image"]["tmp_name"],$file_path);
	move_uploaded_file($_FILES["image2"]["tmp_name"],$file_path2);
	move_uploaded_file($_FILES["image3"]["tmp_name"],$file_path3);


	include "connection/connection.php";
		
		
		//  strSQL = "UPDATE t_sales_force 
		//  			set cust_name='".$cust_name."', 
		// 			cust_addr='".$cust_addr."',
		// 			inst_addr='".$inst_addr."',
		// 			google_addr='".$google_addr."',
		// 			stp_name='".$stp_name."'
		// 			where idx=$idx";

	strSQL = "UPDATE t_sales_force set cust_name='".$cust_name."'' WHERE idx=".$idx;
		

		
		$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
	
	

	
	//adding the path and name to database 
	if(mysqli_query($conn, $sql)){
	
	//filling response array with values 
	$response["error"] = 'false'; 
	$response["url"] = $file_url; 
	//$response["name"] = $name;
	}
	
	
	
	
	//if some error occurred 
	}catch(Exception $e){
	$response["error"]='true';
	$response["message"]=$e->getMessage();
	} 
	//displaying the response 
	echo json_encode($response);
	
	//closing the connection 
	mysqli_close($conn); //gilda
	}else{
	$response["error"]='true';
	$response["message"]='Please choose a file';
	}
 }
 
 /*
 We are generating the file name 
 so this method will return a file name for the image to be upload 
 */
 
 
 
 function getFileName(){
 
 


 //include "connection/connection.php"; 
 $sql = "SELECT max(id) as id_max FROM images";
 //$result = mysql_fetch_array(mysql_query($con,$sql));
 $aQResult = mysqli_query($conn, $sql);

       //while ($aRow = mysql_fetch_array($aQResult))
	   $aRow = mysqli_fetch_array($conn, $aQResult);
	   
       {
	   $no++;	
	   
	   $id_max = $aRow["id_max"];
	   print $id_max;
		
       }

 
  if(id_max!=0)
 	{
 	return 1;
 	}
 else
 { 
 return ++$id_max; 
 }


 
 
//  }