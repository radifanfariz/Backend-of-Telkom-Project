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
 
    public function saveCollections($userid,$service_number,$cust_name,$alamat,$lat,$lng,$photo_url) {
        // $uuid = uniqid('', true);
        // $hash = $this->hashSSHA($password);
        // $encrypted_password = $hash["encrypted"]; // encrypted password
        // $salt = $hash["salt"]; // salt
        $stmt = $this->conn->prepare("INSERT INTO t_collections(userid,service_number,cust_number,alamat,lat,lng,photo_url) VALUES(?,?,?,?,?,?,?)");
        $stmt->bind_param("sssssss", $userid,$service_number,$cust_name,$alamat,$lat,$lng,$photo_url);
        $result = $stmt->execute();
        $stmt->close();
 
        // cek jika sudah sukses
        if ($result) {
            // $stmt = $this->conn->prepare("SELECT * FROM t_log_mobile WHERE userid = ?");
            // $stmt->bind_param("s", $userid);
            // $stmt->execute();
            // $user = $stmt->get_result()->fetch_assoc();
            // $stmt->close();

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
    public function getMyToolsData($service_number) {
 
        // select userid from t_user_mobile where userid = '"+useridstr1+"' and pass='"+passhash+"' and flagging='01';nm
        $stmt = $this->conn->prepare("SELECT 
        a.idx,
        a.no_sc,
        a.latitude_inst_addr,
        a.longitude_inst_addr,
        b.nama as namasf,
        user_id,
        c.nama as namatech,
        user_id2,
        cust_name, 
        hp, 
        cust_addr,
        url2
        FROM 
        (SELECT * FROM t_sales_force_mytools) AS a
        LEFT JOIN
        (SELECT * FROM t_user_mobile) AS b
        ON b.userid = a.user_id
        LEFT JOIN
        (SELECT * FROM t_user_mobile) AS c
        ON c.userid = a.user_id2
        WHERE a.internet_number =? OR a.phone_number=?");
 
        $stmt->bind_param("ss", $service_number,$service_number);
 
        if ($stmt->execute()) {
            $arr = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            $stmt = $this->conn->prepare("SELECT * FROM t_log_mobile ORDER BY id DESC LIMIT 1");
            $stmt->execute();
            $arr2 = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            $data = array_merge($arr,$arr2);
            return $data;
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
// $service_number = 'no way';
 
if (isset($_POST['service_number'])) {
 
    // menerima parameter POST ( email dan password )

    // $preuserid = "08116091965";
    // $password = "telkom2018";
 
    // get the user by email and password
    // get user berdasarkan email dan password

    // $userid = substr($preuserid, 1);

    $service_number = $_POST['service_number'];

    $data = $db->getMyToolsData($service_number);

    // $userid = $_POST['userid'];
    // $service_number = $_POST['service_number'];
    // $cust_name = $_POST['cust_name'];
    // $alamat = $_POST['alamat'];
    // $lat = $_POST['lat'];
    // $lng = $_POST['lng'];
    // $photo_url = $_POST['photo_url'];
    // $user2 = $db->saveCollections($userid,$service_number,$cust_name,$alamat,$lat,$lng,$photo_url);
 
    if ($data != false) {
        // user ditemukan
        $response["error"] = FALSE;
        $response["data"]["id"] = $data["idx"];
        $response["data"]["lat_cust"] = $data["latitude_inst_addr"];
        $response["data"]["lng_cust"] = $data["longitude_inst_addr"];
        $response["data"]["service_number"] = $data["no_sc"];
        $response["data"]["namasf"] = $data["namasf"];
        $response["data"]["nosf"] = $data["user_id"];
        $response["data"]["namatech"] = $data["namatech"];
        $response["data"]["notech"] = $data["user_id2"];
        $response["data"]["namacust"] = $data["cust_name"];
        $response["data"]["nocust"] = $data["hp"];
        $response["data"]["alamatcust"] = $data["cust_addr"];
        $response["data"]["cust_url_image"] = $data["url2"];
        // $response["user"]["userid"] = $user["userid"];
        echo json_encode(array($response));
    } else {
        // user tidak ditemukan password/email salah
        $response["error"] = TRUE;
        $response["error_msg"] = "Gagal memuat data...!!!";
        echo json_encode($response);
    }
} else {
    $response["error"] = TRUE;
    $response["error_msg"] = "Parameter ada yang kurang...!!!";
    echo json_encode($response);
}if (isset($_POST['userid'])){
    $userid = $_POST['userid'];
    $service_number = $_POST['service_number'];
    $cust_name = $_POST['cust_name'];
    $alamat = $_POST['alamat'];
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
    $photo_url = $_POST['photo_url'];
    $user2 = $db->saveCollections($userid,$service_number,$cust_name,$alamat,$lat,$lng,$photo_url);
}
?>

?>