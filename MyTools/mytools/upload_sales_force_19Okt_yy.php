<?php 
 require_once 'dbDetails.php';
 
 	
 
 //this is our upload folder 
 $upload_path = "uploads/"; //ok


 
 
 
 
 //creating the upload url 
 //$upload_url = 'AndroidImageUpload/'.$upload_path; 

 //$upload_url = 'http://'.$server_ip.'/AndroidImageUpload/'.$upload_path; 
 //$upload_url = 'http://'.$server_ip.'/mytools/'.$upload_path; 
 $upload_url = 'mytools/'.$upload_path; 
 
 
 
 
  
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
 	$name = $_POST['name'];														//MEDIUM SITOMPUL - 1
 	$lat2 = $_POST['lat2'];														//MEDIUM SITOMPUL - 1
 	$long2 = $_POST['long2'];														//MEDIUM SITOMPUL - 1
 	$imei = $_POST['imei'];														//MEDIUM SITOMPUL - 1
	$userid = $_POST['userid'];													//MEDIUM SITOMPUL - 1
 	$regional = $_POST['regional'];
 	$witel = $_POST['witel'];
	$sales_id = $_POST['sales_id2'];
 	$service_order = $_POST['service_order'];
 	$service_type = $_POST['service_type'];
 	$serviceno2 = $_POST['serviceno2'];
  	$cust_name2 = $_POST['cust_name2'];
  	$cust_addr2 = $_POST['cust_addr2'];
  	$inst_addr2 = $_POST['inst_addr2'];
  	$google_addr2 = $_POST['google_addr2']; //new
  	$hp2 = $_POST['hp2'];
  	$email2 = $_POST['email2'];
  	$packet_indihome2 = $_POST['packet_indihome2'];
	$latitude_rmh2 = $_POST['latitude_rmh2'];
	$longitude_rmh2 = $_POST['longitude_rmh2'];
	$latitude_odp2 = $_POST['latitude_odp2'];
	$longitude_odp2 = $_POST['longitude_odp2'];
 	$barcode_dw2 = $_POST['barcode_dw2'];
	$barcode_port2 = $_POST['barcode_port2'];
 	$stp_name = $_POST['stp_name2'];
 	$stp_panel = $_POST['stp_panel'];
 	$stp_port = $_POST['stp_port'];
 	$kendala_teknis = $_POST['kendala_teknis'];
 	$kendala_nonteknis = $_POST['kendala_nonteknis'];
 	$keterangan_kendala = $_POST['keterangan_kendala2'];
 	$barcode_result2 = $_POST['barcode_result2'];

 	//getting file info from the request 
 	$fileinfo = pathinfo($_FILES['image']['name']);
 	$fileinfo2 = pathinfo($_FILES['image2']['name']);
 	$fileinfo3 = pathinfo($_FILES['image3']['name']);
 	$fileinfo4 = pathinfo($_FILES['image4']['name']);

 	//getting the file extension 
 	$extension = $fileinfo['extension'];
 	$extension2 = $fileinfo2['extension'];
 	$extension3 = $fileinfo3['extension'];
 	$extension4 = $fileinfo4['extension'];

 	$file_url = $upload_url . getFileName();
 	$file_url2 = $upload_url . getFileName();
 	$file_url3 = $upload_url . getFileName();
	$file_url4 = $upload_url . getFileName();
	
	
 	//$filename = getFileName() . '.' . $extension; 								//MEDIUM SITOMPUL - 3
 	//$filename = '$dateTime' . '.' . $extension; 									//MEDIUM SITOMPUL - 3
	
 	date_default_timezone_set("Asia/Bangkok");
 	$filename = date("Ymd") ."_". date("his")."a.". $extension; 					//MEDIUM SITOMPUL - 3
 	$filename2 = date("Ymd") ."_". date("his")."b.". $extension2; 					//MEDIUM SITOMPUL - 3
 	$filename3 = date("Ymd") ."_". date("his")."c.". $extension3; 					//MEDIUM SITOMPUL - 3
 	$filename4 = date("Ymd") ."_". date("his")."d.". $extension4; 					//MEDIUM SITOMPUL - 3
 
 
 	//file path to upload in the server 
 	//$file_path = $upload_path . getFileName() . '.'. $extension; 
 	
	$file_path = $upload_path . $filename;
 	$file_path2 = $upload_path . $filename2;
 	$file_path3 = $upload_path . $filename3;
	$file_path4 = $upload_path . $filename4;
	
	$file_path_url = "mytools/uploads/". $filename;
  	$file2_path_url = "mytools/uploads/". $filename2;
	$file3_path_url = "mytools/uploads/". $filename3;
  	$file4_path_url = "mytools/uploads/". $filename4;
	

 	//trying to save the file in the directory 
 	try{
 	//saving the file 
 	//move_uploaded_file($_FILES['image']['tmp_name'],$file_path);//ok
 
 	move_uploaded_file($_FILES["image"]["tmp_name"],$file_path);
 	move_uploaded_file($_FILES["image2"]["tmp_name"],$file_path2);
 	move_uploaded_file($_FILES["image3"]["tmp_name"],$file_path3);
	move_uploaded_file($_FILES["image4"]["tmp_name"],$file_path4);
	

 	include "connection/connection.php";  // untuk fungsi: "$db_host", "$db_login", "$db_password"
	
	$strSQL ="INSERT INTO t_sales_force (name, 
	regional, 
	witel, 
	sales_id, 
	service_order, 
	service_type, 
	service_number, 
	cust_name, 
	cust_addr, 
	inst_addr, 
	google_addr, 
	hp, 
	email, 
	packet_indihome, 
	latitude_inst_addr, 
	longitude_inst_addr, 
	latitude_odp, 
	longitude_odp, 
	barcode_dw, 
	barcode_port, 
	stp_name, 
	stp_panel, 
	stp_port, 
	kendala_teknis, 
	kendala_nonteknis, 
	keterangan_kendala, 
	url, 
	url2, 
	url3, 
	url4, 
	filename, 
	filename2, 
	filename3, 
	filename4, 
	barcode_result, 
	latitude, 
	longitude, 
	imei, 
	user_id) 
	VALUES ('".$name."',
			'".$regional."',
			'".$witel."',
			'".$sales_id."',
			'".$service_order."',
			'".$service_type."',
			'".$serviceno2."', 
			'".$cust_name2."',
			'".$cust_addr2."',
			'".$inst_addr2."',
			'".$google_addr2."',
			'".$hp2."',
			'".$email2."',
			'".$packet_indihome2."',
			'".$latitude_rmh2."',
			'".$longitude_rmh2."',
			'".$latitude_odp2."',
			'".$longitude_odp2."',
			'".$barcode_dw2."',
			'".$barcode_port2."',
			'".$stp_name."',
			'".$stp_panel."',
			'".$stp_port."',
			'".$kendala_teknis."',
			'".$kendala_nonteknis."',
			'".$keterangan_kendala."',
			'".$file_path_url."',
			'".$file2_path_url."',
			'".$file3_path_url."',
			'".$file4_path_url."',
			'".$filename."', 
			'".$filename2."', 
			'".$filename3."', 
			'".$filename4."', 
			'".$barcode_result2."', 
			'".$lat2."', 
			'".$long2."', 
			'".$imei."', 
			'".$userid."' )";
	
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