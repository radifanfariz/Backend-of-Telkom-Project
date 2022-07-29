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

    public function setNewAction($idx,$newAction,$column){
            // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
            $sqlupdate = "UPDATE t_sales_force SET $column = '$newAction' WHERE idx = '$idx'";
            // print_r ($this->conn);
            $result = mysqli_query($this->conn, $sqlupdate) or die ("Query salah");

            // $stmt->bind_param("sss", $column,$newAction,$userid);
        
            if ($result == TRUE) {
                // $user = $stmt->get_result()->fetch_all();
                // $stmt->close();
                // print_r($user);
                return TRUE;
            } else {
                return NULL;
            }
            $this->conn->close();
    }
 
 
}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
// isset($_POST['userid'])
 
if (isset($_POST['idx'])) {
 
    // menerima parameter POST ( email dan password )
    $idx = $_POST['idx'];
    $newAction = $_POST['newaction'];
    $column = $_POST['column'];

    // $userid = "8116091965";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    // $userid = substr($preuserid, 1);

    $user = $db->setNewAction($idx,$newAction,$column);
    // $user2 = $db->simpanUser($userid,$password);
 
    $result = array();
    if ($user != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["UPDATE"] = "SUCCESS";
        echo json_encode($response);
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