<?php 
 
 //importing dbDetails file 
 //require_once 'dbDetails.php';
 require_once 'dbDetails.php';
 
 	
 
 //this is our upload folder 
 $upload_path = "uploads/"; //ok
 
 $server_ip = "36.89.34.66"; //medium
 //$server_ip = "192.168.100.78"; //medium
 

 
 //creating the upload url 
 $upload_url = 'http://'.$server_ip.'/AndroidImageUpload/'.$upload_path; 
 //$upload_url = 'AndroidImageUpload/'.$upload_path; 

  
 //response array 
 $response = array(); 
 print "response=".$response."<br>";
 
  
  
 if($_SERVER["REQUEST_METHOD"]=='POST'){
 
 //checking the required parameters from the request 
 if(isset($_POST["name"]) and isset($_FILES["image"]["name"])){
 
 
 //connecting to the database 
 //include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
 $conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
 
 //getting name from the request  
 $imei2 = $_POST['imei2'];														//MEDIUM SITOMPUL - 1
 $userid2 = $_POST['userid2'];													//MEDIUM SITOMPUL - 1
 

 
 
 $keterangan_kendala = $_POST['keterangan_kendala2'];
 $barcode_result2 = $_POST['barcode_result2'];
 
 
 
 
 
 
 
 
 

 //getting file info from the request 
 $fileinfo = pathinfo($_FILES['image']['name']);
 $fileinfo2 = pathinfo($_FILES['image2']['name']);

 //getting the file extension 
 $extension = $fileinfo['extension'];
 $extension2 = $fileinfo2['extension'];

 
 //file url to store in the database 
 $file_url = $upload_url . getFileName() . '.' . $extension;					//MEDIUM SITOMPUL - 2222
 $file_url2 = $upload_url . getFileName() . '.' . $extension2;					//MEDIUM SITOMPUL - 2222


 date_default_timezone_set("Asia/Bangkok");
 $filename = date("Ymd") ."_". date("his")."a.". $extension; 					//MEDIUM SITOMPUL - 3
 $filename2 = date("Ymd") ."_". date("his")."b.". $extension2; 					//MEDIUM SITOMPUL - 3

 
 
 
// $file_url = $upload_url . $file_url . '.' . $extension;					    //MEDIUM SITOMPUL - 222
 
 
 //file path to upload in the server 
 //$file_path = $upload_path . getFileName() . '.'. $extension; 
 $file_path = $upload_path . $filename . '.'. $extension; // medium222
 $file_path2 = $upload_path . $filename2 . '.'. $extension2; // medium222

  


 //trying to save the file in the directory 
 try{
 //saving the file 
 //move_uploaded_file($_FILES['image']['tmp_name'],$file_path);//ok
 
 move_uploaded_file($_FILES["image"]["tmp_name"],$file_path);
 move_uploaded_file($_FILES["image2"]["tmp_name"],$file_path2);

 
 
 
 
 	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	//$strSQL = "INSERT INTO images (name, url, filename, filename2, filename3, latitude, longitude, user_id) VALUES ('$name', '$file_url', '$filename', '$lat2', '$long2', '$userid2' )";
	
	$strSQL ="INSERT INTO t_sales_force (filename, filename2, imei, user_id) 
	VALUES ('".$filename."',
			'".$filename2."', 
			'".$imei2."', 
			'".$userid2."' )";
	
	$qry = mysqli_query($conn, $strSQL) or die ("Query salah");
 
 
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
 
 
 
 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx OKE SUDAH CHECK KE DATA BASE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


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


 
//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
 
 
 }