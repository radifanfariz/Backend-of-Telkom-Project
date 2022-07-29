<?php 
 require_once '_dbDetails.php';
 
 	
 
 //this is our upload folder 
 $upload_path = "../_uploads_pdf/"; //ok


 
 
 
 
 //creating the upload url 
 //$upload_url = 'AndroidImageUpload/'.$upload_path; 

 //$upload_url = 'http://'.$server_ip.'/AndroidImageUpload/'.$upload_path; 
 //$upload_url = 'http://'.$server_ip.'/mytools/'.$upload_path; 
 $upload_url = 'mytools/'.$upload_path; 
 
 
 
 
  
 //response array 
 $response = array(); 
 print "response=".$response."<br>";
 $oldFIle = $_POST["oldPath"];
 
  if(file_exists($oldFIle)){
 	if(isset($_FILES["pdf"]["name"])){
		unlink($oldFIle);
		echo'File'.$oldFIle.'telah dihapus';	
	}else{
		echo 'Tidak Dapat Menghapus'.$oldFIle;
	}
	
 }
  
  
 if($_SERVER["REQUEST_METHOD"]=='POST'){
 
 
 //checking the required parameters from the request 
 if(isset($_POST["idx"]) and isset($_FILES["pdf"]["name"])){
 
 
 //connecting to the database 
 //include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
 $conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
 
 	//getting name from the request 
	$idx = $_POST['idx'];
	$column = $_POST['column'];

 	//getting file info from the request 
 	$fileinfo = pathinfo($_FILES['pdf']['name']);
 	// $fileinfo2 = pathinfo($_FILES['image2']['name']);
 	// $fileinfo3 = pathinfo($_FILES['image3']['name']);
 	// $fileinfo4 = pathinfo($_FILES['image4']['name']);

 	//getting the file extension 
 	$extension = $fileinfo['extension'];
 	// $extension2 = $fileinfo2['extension'];
 	// $extension3 = $fileinfo3['extension'];
	 // $extension4 = $fileinfo4['extension'];
	 
	//  $miliseconds = round(microtime(true)* 10000);
	
	
 	//$filename = getFileName() . '.' . $extension; 								//MEDIUM SITOMPUL - 3
 	//$filename = '$dateTime' . '.' . $extension; 									//MEDIUM SITOMPUL - 3
	
 	date_default_timezone_set("Asia/Bangkok");
 	$filename = date("Ymd") ."_". date("his")."xyz.". $extension; 					//MEDIUM SITOMPUL - 3
 	// $filename2 = date("Ymd") ."_". date("his")."b.". $extension2; 					//MEDIUM SITOMPUL - 3
 	// $filename3 = date("Ymd") ."_". date("his")."c.". $extension3; 					//MEDIUM SITOMPUL - 3
 	// $filename4 = date("Ymd") ."_". date("his")."d.". $extension4; 					//MEDIUM SITOMPUL - 3
 
 
 	//file path to upload in the server 
 	//$file_path = $upload_path . getFileName() . '.'. $extension; 
 	
	$file_path = $upload_path . $filename;
 	// $file_path2 = $upload_path . $filename2;
 	// $file_path3 = $upload_path . $filename3;
	// $file_path4 = $upload_path . $filename4;
	
	$file_path_url = "mytools/_uploads_pdf/". $filename;
  	// $file2_path_url = "mytools/uploads/". $filename2;
	// $file3_path_url = "mytools/uploads/". $filename3;
  	// $file4_path_url = "mytools/uploads/". $filename4;
	

 	//trying to save the file in the directory 
 	try{
 	//saving the file 
 	//move_uploaded_file($_FILES['image']['tmp_name'],$file_path);//ok
 
 	move_uploaded_file($_FILES["pdf"]["tmp_name"],$file_path);
 	// move_uploaded_file($_FILES["image2"]["tmp_name"],$file_path2);
 	// move_uploaded_file($_FILES["image3"]["tmp_name"],$file_path3);
	// move_uploaded_file($_FILES["image4"]["tmp_name"],$file_path4);
	

 	// include "_connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	$strSQL = "UPDATE t_sales_force_mytools SET 
		$column ='".$file_path_url."'
		
		
        WHERE idx =".$idx;

	
	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
	exit("SUCCESS");
 
 
 //$sql = "INSERT INTO images (name, url) VALUES ('$file_url', '$name')";
 
 //adding the path and name to database 
 if(mysqli_query($conn, $sql)){ //gilda
 
 //filling response array with values 
 $response["error"] = 'false'; 
 $response["url"] = $file_url; 
 //$response["name"] = $name;
 }
 
 
 
 
 //if some error occurred 
 }catch(Exception $e){
 $response["error"]='true';
 $response["message"]=$e->getMessage();
 exit("ERROR");
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
 $sql = "SELECT max(id) as id_max FROM images";
 $aQResult = mysqli_query($conn, $sql);
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


 }