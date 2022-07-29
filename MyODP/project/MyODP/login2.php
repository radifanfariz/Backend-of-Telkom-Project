<?php
require_once 'dbDetails.php';
// $conn = mysqli_connect(HOST, USER, PASS, DB) or die ('Unable to Connect...');
 
class DB_Functions {
 
    private $conn;
 
    // constructor
    function __construct() {
        // require_once 'DB_Connect.php';
        // // koneksi ke database
        // $db = new Db_Connect();
        $this->conn = mysqli_connect(HOST, USER, PASS, DB_LOGIN) or die ('Unable to Connect...');
    }
 
    // destructor
    function __destruct() {
         
    }
 
    public function simpanUser($userid,$apps_name) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_log_mobile(userid,apps_name) VALUES(?,?)");
        $stmt->bind_param("ss", $userid,$apps_name);
        $result = $stmt->execute();
        $stmt->close();
 
        // cek jika sudah sukses
        if ($result) {
            $stmt = $this->conn->prepare("SELECT * FROM t_log_mobile WHERE userid = ? ORDER BY id DESC");
            $stmt->bind_param("s", $userid);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
 
            return $user;
        } else {
            return false;
        }
    }
 
    /**
     * Get user berdasarkan email dan password
     */
    public function getUserByUseridAndPassword($userid, $password, $c_profile, $flagging) {
 
        // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
        $password = $this->checkhashMD5($password);
        $stmt = $this->conn->prepare("SELECT * FROM t_rst WHERE userid = ? and pass = ? and c_profile = ? and flagging= ?");
 
        $stmt->bind_param("ssss", $userid,$password,$c_profile,$flagging);
        $result = $stmt->execute();
 
        if ($result) {
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
 
            // verifikasi password user
            // $salt = $user['userid'];
            // $encrypted_password = $user['pass'];
            // $hash = $this->checkhashSSHA($salt, $password);
            // $hash = $this->checkhashMD5($password);
            // echo $userid;
            // cek password jika sesuai
            // if ($encrypted_password == $hash) {
            //     // autentikasi user berhasil
            //     return $user;
            // }
        } else {
            return false;
        }
    }
 
    /**
     * Cek User ada atau tidak
     */
    public function isUserExisted($userid) {
        $stmt = $this->conn->prepare("SELECT userid from t_user_mobile WHERE userid = ?");
 
        $stmt->bind_param("s", $userid);
 
        $stmt->execute();
 
        $stmt->store_result();
 
        if ($stmt->num_rows > 0) {
            // user telah ada 
            $stmt->close();
            return true;
        } else {
            // user belum ada 
            $stmt->close();
            return false;
        }
    }
 
    /**
     * Encrypting password
     * @param password
     * returns salt and encrypted password
     */
    public function hashSSHA($password) {
 
        $salt = sha1(rand());
        $salt = substr($salt, 0, 10);
        $encrypted = base64_encode(sha1($password . $salt, true) . $salt);
        $hash = array("salt" => $salt, "encrypted" => $encrypted);
        return $hash;
    }
 
    /**
     * Decrypting password
     * @param salt, password
     * returns hash string
     */
    public function checkhashSSHA($salt, $password) {
 
        $hash = base64_encode(sha1($password . $salt, true) . $salt);
 
        return $hash;
    }

    // public function generateMD5($password){

    // }

    public function checkhashMD5($password){
        $hash = md5($password);

        return $hash;
    }
 
}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
 
if (isset($_POST['userid']) && isset($_POST['password'])) {
 
    // menerima parameter POST ( email dan password )
    // $preuserid = $_POST['userid'];
    $userid = $_POST['userid'];
    $password = $_POST['password'];
    $c_profile = "01";
    $flagging = "10";
    $apps_name = "myodp";

    // $preuserid = "08116091965";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    // $userid = substr($preuserid, 1);

    $user = $db->getUserByUseridAndPassword($userid, $password,$c_profile, $flagging);
    if ($user != false) {
        $user2 = $db->simpanUser($userid,$apps_name);
 
    if ($user2 != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["user"]["id"] = $user2["id"];
        $response["user"]["timestamp"] = $user2["timestamp"];
        $response["user"]["userid"] = $user2["userid"];
        $response["user"]["nik"] = $user["nik"];
        // $response["user"]["userid"] = $user["userid"];
        echo json_encode($response);
    } 
}else {
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