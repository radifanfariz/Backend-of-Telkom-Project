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
 
    public function saveMaterialOdp($qrcode,$jlhsoc,$jlhsclamp,$jlhclampring,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_material_odp(qrcode,jlh_soc,jlh_s_clamp,jlh_clamp_ring,eviden_img) VALUES(?,?,?,?,?)");
        $stmt->bind_param("sssss", $qrcode,$jlhsoc,$jlhsclamp,$jlhclampring,$photo_url);
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
    public function saveMaterialTiang($tableName,$jlhsclamp,$jlhclampring,$jlhtiang,$jlhsplitstopper,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO $tableName(jlh_s_clamp,jlh_clamp_ring,jlh_tiang,jlh_split_stopper,eviden_img) VALUES(?,?,?,?,?)");
        $stmt->bind_param("sssss", $jlhsclamp,$jlhclampring,$jlhtiang,$jlhsplitstopper,$photo_url);
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
    public function saveMaterialPelangganOutdoor($jlhclamphook,$jlhsclamp,$jlhsplitstopper,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_material_pelanggan_outdoor(jlh_clamp_hook,jlh_s_clamp,jlh_split_stopper,eviden_img) VALUES(?,?,?,?)");
        $stmt->bind_param("ssss", $jlhclamphook,$jlhsclamp,$jlhsplitstopper,$photo_url);
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

    public function saveMaterialPelangganIndoor($jlhrosetoptic,$jlhsoc,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_material_pelanggan_indoor(jlh_roset_optic,jlh_soc,eviden_img) VALUES(?,?,?)");
        $stmt->bind_param("sss", $jlhrosetoptic,$jlhsoc,$photo_url);
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
    public function saveImage($fileinfo,$name)
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

        move_uploaded_file($_FILES[$name]["tmp_name"],$file_path);

        return $file_path_url;
    }

}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
// $service_number = 'no way'; 
if (!empty($_POST)){
    ////material di odp
    $qrcode = $_POST['qrcode'];
    $jlhsoc = $_POST['jlhsoc'];
    $jlhsclamp = $_POST['jlhsclamp'];
    $jlhclampring = $_POST['jlhclampring'];
    /////tiang antara 1
    $jlhsclamp1 = $_POST['jlhsclamp1'];
    $jlhclampring1 = $_POST['jlhclampring1'];
    $jlhtiang1 = $_POST['jlhtiang1'];
    $jlhsplitstopper1 = $_POST['jlhsplitstopper1'];
    /////tiang antara 2
    $jlhsclamp2 = $_POST['jlhsclamp2'];
    $jlhclampring2 = $_POST['jlhclampring2'];
    $jlhtiang2 = $_POST['jlhtiang2'];
    $jlhsplitstopper2 = $_POST['jlhsplitstopper2'];
    /////tiang antara 3
    $jlhsclamp3 = $_POST['jlhsclamp3'];
    $jlhclampring3 = $_POST['jlhclampring3'];
    $jlhtiang3 = $_POST['jlhtiang3'];
    $jlhsplitstopper3 = $_POST['jlhsplitstopper3'];
    /////pelanggan (out door)
    $jlhclamphook = $_POST['jlhclamphook'];
    $jlhsclamp4 = $_POST['jlhsclamp4'];
    $jlhsplitstopper4 = $_POST['jlhsplitstopper4'];
    /////pelanggan (in door)
    $jlhrosetoptic = $_POST['jlhrosetoptic'];
    $jlhsoc2 = $_POST['jlhsoc2'];
    

    $fileinfo = pathinfo($_FILES['image']['name']);
    $fileinfo1 = pathinfo($_FILES['image1']['name']);
    $fileinfo2 = pathinfo($_FILES['image2']['name']);
    $fileinfo3 = pathinfo($_FILES['image3']['name']);
    $fileinfo4 = pathinfo($_FILES['image4']['name']);
    $fileinfo5 = pathinfo($_FILES['image5']['name']);
    $photo_url = $db->saveImage($fileinfo,"image");
    $photo_url1 = $db->saveImage($fileinfo1,"image1");
    $photo_url2 = $db->saveImage($fileinfo2,"image2");
    $photo_url3 = $db->saveImage($fileinfo3,"image3");
    $photo_url4 = $db->saveImage($fileinfo,"image4");
    $photo_url5 = $db->saveImage($fileinfo,"image5");

    $tiangname1 = "t_material_tiang1";
    $tiangname2 = "t_material_tiang2";
    $tiangname3 = "t_material_tiang3";

    $insertFunc = $db->saveMaterialOdp($qrcode,$jlhsoc,$jlhsclamp,$jlhclampring,$photo_url);
    $insertFunc1 = $db->saveMaterialTiang($tiangname1,$jlhsclamp1,$jlhclampring1,$jlhtiang1,$jlhsplitstopper1,$photo_url1);
    $insertFunc2 = $db->saveMaterialTiang($tiangname2,$jlhsclamp2,$jlhclampring2,$jlhtiang2,$jlhsplitstopper2,$photo_url2);
    $insertFunc3 = $db->saveMaterialTiang($tiangname3,$jlhsclamp3,$jlhclampring3,$jlhtiang3,$jlhsplitstopper3,$photo_url3);
    $insertFunc4 = $db->saveMaterialPelangganOutdoor($jlhclamphook,$jlhsclamp4,$jlhsplitstopper4,$photo_url4);
    $insertFunc5 = $db->saveMaterialPelangganIndoor($jlhrosetoptic,$jlhsoc2,$photo_url4);

    if($insertFunc == true and $insertFunc1 == true and $insertFunc2 == true and $insertFunc3 == true
    and $insertFunc4 == true and $insertFunc5 == true){
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