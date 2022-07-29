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

    public function getLoginfoData($date_x,$date_y,$userid){
            // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
            $stmt = $this->conn->prepare("SELECT * FROM `t_log_mobile` where timestamp >= timestamp(?) AND timestamp <= timestamp(?) AND userid = ?");

            $stmt->bind_param("sss",$date_x,$date_y, $userid);
        
            if ($stmt->execute()) {
                $user = $stmt->get_result()->fetch_all();
                $stmt->close();
                // print_r($user);
                return $user;
            } else {
                return NULL;
            }
    }
 
 
}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
// isset($_POST['userid'])
 
if (isset($_POST['userid'])) {
 
    // menerima parameter POST ( email dan password )
    $preuserid = $_POST['userid'];
    $date_x = $_POST['date_x'];
    $date_y = $_POST['date_y'];

    // $userid = "8116091965";
    // $date_x = "2020-04-24";
    // $date_y = "2020-04-25";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    $userid = substr($preuserid, 1);


    $user = $db->getLoginfoData($date_x,$date_y,$userid);
    // $user2 = $db->simpanUser($userid,$password);
 
    $result = array();
    if ($user != false) {
        // user ditemukan
        
        foreach($user as $item){
            $response["error"] = FALSE;
            $response["user"]["id"] = $item[0];
            $response["user"]["timestamp"] = $item[1];
            $response["user"]["userid"] = $item[2];
            // $response["user"]["userid"] = $user["userid"];
            // echo json_encode($response);
            array_push($result,$response);
        }
        echo json_encode($result);
    } else {
        // user tidak ditemukan password/email salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Gagal Memuat";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Terjadi Kesalahan";
    echo json_encode($response);
}
?>

?>