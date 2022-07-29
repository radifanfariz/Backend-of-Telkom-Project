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
 
    /**
     * Change Password
     */
    public function changePassword($userid, $old_password, $new_password) {
 
        $hashOldPassword = $this->checkhashMD5($old_password);
        $hashNewPassword = $this->checkhashMD5($new_password);
        // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
        $stmt = $this->conn->prepare("UPDATE t_user_mobile SET pass=? WHERE userid=? AND pass=?");
        $stmt->bind_param("sss", $hashNewPassword,$userid,$hashOldPassword);
        $result = $stmt->execute();
        // $stmt->close();
 
        // cek jika sudah sukses
        if ($stmt->affected_rows > 0) {
            // $stmt = $this->conn->prepare("SELECT * FROM t_log_mobile WHERE userid = ?");
            // $stmt->bind_param("s", $userid);
            // $stmt->execute();
            // $user = $stmt->get_result()->fetch_assoc();
            // $stmt->close();

            // $user = $stmt->get_result()->fetch_assoc();
            // $stmt->close();
            $stmt->close();
            return true;
        } else {
            $stmt->close();
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

    public function generateMD5($password){

    }

    public function checkhashMD5($password){
        $hash = md5($password);

        return $hash;
    }
 
}
 
// json response array
$response = array("error" => FALSE);
$db = new DB_Functions();
// $cek = true;
 
if (!empty($_POST)) {
 
    // menerima parameter POST ( email dan password )
    $preuserid = $_POST['userid'];
    $old_password = $_POST['old_password'];
    $new_password = $_POST['new_password'];

    // $preuserid = "08116091965";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    $userid = substr($preuserid, 1);

    $user = $db->changePassword($userid, $old_password, $new_password);
 
    if ($user != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["success_msg"] = "Password Berhasil Diubah...!!!";
        // $response["user"]["userid"] = $user["userid"];
        echo json_encode($response);
    } else {
        // user tidak ditemukan password/email salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Password Gagal Diubah...!!!";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter (userid atau password) ada yang kurang";
    echo json_encode($response);
}
?>