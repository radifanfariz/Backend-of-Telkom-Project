<?php
require_once '_dbDetails.php';
// $conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
 
class DB_Functions {
 
    private $conn;
 
    // constructor
    function __construct() {
        // require_once 'DB_Connect.php';
        // // koneksi ke database
        // $db = new Db_Connect();
        $this->conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
    }
 
    // destructor
    function __destruct() {
         
    }
 
    public function insertLatlng($userid,$lat,$lng) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_autotracking(userid,lat,lng) VALUES(?,?,?)");
        $stmt->bind_param("sss", $userid,$lat,$lng);
        $result = $stmt->execute();
        $stmt->close();
 
        // cek jika sudah sukses
        if ($result) {
            $stmt = $this->conn->prepare("SELECT userid,lat,lng FROM t_autotracking ORDER BY id DESC LIMIT 1");
            // $stmt->bind_param("s", $userid);
            $stmt->execute();
            $data = $stmt->get_result()->fetch_assoc();
            $stmt->close();
 
            return $data;
        } else {
            return false;
        }
    }
 
}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
$json = file_get_contents('php://input');
// $json = "[[98.8229093,1.6904597]]";
if (!empty($json)) {
 
    // menerima parameter POST ( email dan password )
    // $preuserid = $_POST['userid'];

    $latlng_arr = json_decode($json);
    // echo($latlng_arr[0][1]);
    $lat = $latlng_arr[0][0];
    $lng = $latlng_arr[0][1];
    $userid = $latlng_arr[0][2];

    // $preuserid = "08116091965";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    $dataLoc = $db->insertLatlng($userid,$lat,$lng);
 
    if ($dataLoc != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["data_location"] = "Berhasil di Proses";
        $response["data"]["lat"] = $dataLoc["lat"];
        $response["data"]["lng"] = $dataLoc["lng"];
        $response["data"]["userid"] = $dataLoc["userid"];
        echo json_encode($response);
    } else {
        // user tidak ditemukan password/email salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Login gagal. Password/Userid salah";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (userid atau password) ada yang kurang";
    echo json_encode($response);
}
?>

?>