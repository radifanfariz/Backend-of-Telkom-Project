<?php
require_once '_dbDetails.php';
// $conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
 
class DB_Functions {
 
    private $conn;
    private $upload_path;
 
    // constructor
    function __construct() {
        // require_once 'DB_Connect.php';
        // // koneksi ke database
        // $db = new Db_Connect();
        $this->conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
        $this->upload_path = "../_uploads/"; //ok
    }
 
    // destructor
    function __destruct() {
         
    }
 
    public function saveCollections($userid,$service_number,$cust_name,$alamat,$status,$keterangan,$lat,$lng,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_collections(userid,service_number,cust_name,alamat,status,keterangan,lat,lng,photo_url) VALUES(?,?,?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssssss", $userid,$service_number,$cust_name,$alamat,$status,$keterangan,$lat,$lng,$photo_url);
        $result = $stmt->execute();
        $stmt->close();
 
        // cek jika sudah sukses
        if ($result) {
            // $stmt = $this->conn->prepare("SELECT * FROM t_log_mobile WHERE userid = ?");
            // $stmt->bind_param("s", $userid);
            // $stmt->execute();
            // $user = $stmt->get_result()->fetch_assoc();
            // $stmt->close();

            // $user = $stmt->get_result()->fetch_assoc();
            // $stmt->close();
 
            return true;
        } else {
            return false;
        }
    }

    public function saveImage($fileinfo)
    {
                //getting the file extension 
        $extension = $fileinfo['extension'];

        $miliseconds = round(microtime(true)* 10000);

        date_default_timezone_set("Asia/Bangkok");
        $filename = date("Ymd") ."_". date("his").$miliseconds.".". $extension; 


        //file path to upload in the server 

        $file_path = $this->upload_path . $filename;

        $file_path_url = "mytools/_uploads/". $filename;


        //trying to save the file in the directory 

        move_uploaded_file($_FILES["image"]["tmp_name"],$file_path);

        return $file_path_url;
    }

}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
// $service_number = 'no way'; 
if (isset($_POST['userid'])){
    // $userid = "Test";
    // $service_number = "Test";
    // $cust_name = "Test";
    // $alamat = "Test";
    // $lat = "98.8229093";
    // $lng = "1.6904597";
    // $status = "Test";
    // $keterangan = "Test";
    // $photo_url = "Test";

    $userid = $_POST['userid'];
    $service_number = $_POST['servnum'];
    $cust_name = $_POST['custname'];
    $alamat = $_POST['alamat'];
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
    $status = $_POST['status'];
    $keterangan = $_POST['ket'];
    $fileinfo = pathinfo($_FILES['image']['name']);
    $photo_url = $db->saveImage($fileinfo);
    $inserState = $db->saveCollections($userid,$service_number,$cust_name,$alamat,$status,$keterangan,$lat,$lng,$photo_url);
    if($inserState == true){
        $response["error"] = FALSE;
        $response["error_msg"] = "Save Data Berhasil";
        echo json_encode($response);
    } else {
    // user tidak ditemukan password/email salah
    $response["error"] = TRUE;
    $response["error_msg"] = "Save Data Gagal...!!!";
    echo json_encode($response);
    }
} else {
$response["error"] = TRUE;
$response["error_msg"] = "Parameter ada yang kurang...!!!";
echo json_encode($response);
}

// ////////////////////////How To Upload File PHP//////////////////////////////
//  //this is our upload folder 
//  $upload_path = "../_uploads/"; //ok
// //getting file info from the request 
// $fileinfo = pathinfo($_FILES['image']['name']);

// //getting the file extension 
// $extension = $fileinfo['extension'];

// $miliseconds = round(microtime(true)* 10000);

// date_default_timezone_set("Asia/Bangkok");
// $filename = date("Ymd") ."_". date("his").$miliseconds.".". $extension; 


// //file path to upload in the server 

// $file_path = $upload_path . $filename;

// $file_path_url = "mytools/_uploads/". $filename;


// //trying to save the file in the directory 

// move_uploaded_file($_FILES["image"]["tmp_name"],$file_path);
?>