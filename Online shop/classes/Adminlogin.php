
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/SessionAdmin.php');
	SessionAdmin::checkLogin();
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>




<?php


class Adminlogin{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}


	public function adminLogin($adminEmail,$adminPass){


		$adminEmail=$this->fm->validation($adminEmail);
		$adminPass=$this->fm->validation($adminPass);


		$adminEmail= mysqli_real_escape_string($this->db->link,$adminEmail);
		$adminPass= mysqli_real_escape_string($this->db->link,$adminPass);

		if(empty($adminEmail) || empty($adminPass)){
			$loginmsg = "Email or Password must not empty";
			return $loginmsg;
		}

		else{

			$query = "SELECT * FROM admin WHERE adminEmail='$adminEmail' AND adminPass='$adminPass'";

			$result = $this->db->select($query);

			if($result !=false){

					$value=$result->fetch_assoc();
					SessionAdmin::set("adminlogin",true);
					SessionAdmin::set("adminId",$value['adminId']);
					SessionAdmin::set("first_Name",$value['first_Name']);
					header("Location:index.php");

			}else{

				$loginmsg = "Email or Password not match";
				return $loginmsg;

			}

		}




	}


}


?>