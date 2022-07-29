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

    public function setDelete($id){
            // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
            $sqldelete = "DELETE from t_sales_force_mytools WHERE id = '$id'";
            // print_r ($this->conn);
            $result = mysqli_query($this->conn, $sqldelete) or die ("Query salah");

            // $stmt->bind_param("sss", $column,$newAction,$userid);
        
            if ($result == TRUE) {
                // $user = $stmt->get_result()->fetch_all();
                // $stmt->close();
                // print_r($user);
                return TRUE;
            } else {
                return FALSE;
            }
            $this->conn->close();
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
 
    // get the user by email and password
    // get user berdasarkan email dan password

    // $userid = substr($preuserid, 1);

    $user = $db->setDelete($id);
    // $user2 = $db->simpanUser($userid,$password);
 
    // $result = array();
    if ($user != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["DELETE"] = "SUCCESS";
        echo json_encode($response);
    } else {
        // user tidak ditemukan password/email salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Gagal Menghapus";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Terjadi Kesalahan";
    echo json_encode($response);
}
?>