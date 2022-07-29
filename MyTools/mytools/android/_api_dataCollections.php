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

    public function getDataCollectionsData($id){
            // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
            $stmt = $this->conn->prepare("SELECT * FROM t_collections where id = ?");

            $stmt->bind_param("s", $id);
        
            if ($stmt->execute()) {
                $data = $stmt->get_result()->fetch_all();
                $stmt->close();
                // print_r($user);
                return $data;
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
 
if (isset($_POST['id'])) {
 
    // menerima parameter POST ( email dan password )
    $id = $_POST['id'];
    // $userid = "8116091965";
    // $password = "telkom2018";
    // $id = 5;

    // $userid = "08116091965";
    // $date_x = "2020-05-14";
    // $date_y = "2020-05-16";
 

    // $userid = substr($preuserid, 1);

    $data = $db->getDataCollectionsData($id);
    // $user2 = $db->simpanUser($userid,$password);
 
    $result = array();
    if ($data != false) {
        // user ditemukan
        
        foreach($data as $item){
            $response["error"] = FALSE;
            $response["data"]["id"] = $item[0];
            $response["data"]["timestamp"] = $item[1];
            $response["data"]["userid"] = $item[2];
            $response["data"]["service_number"] = $item[3];
            $response["data"]["cust_name"] = $item[4];
            $response["data"]["alamat"] = $item[5];
            $response["data"]["status"] = $item[6];
            $response["data"]["keterangan"] = $item[7];
            $response["data"]["lat"] = $item[8];
            $response["data"]["lng"] = $item[9];
            $response["data"]["photo_url"] = $item[10];
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