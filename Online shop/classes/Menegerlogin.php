
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Session.php');
	Session::checkLogin();
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>




<?php


class Menegerlogin{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}


	public function menegerLogin($menegerEmail,$menegerPass){


		$menegerEmail=$this->fm->validation($menegerEmail);
		$menegerPass=$this->fm->validation($menegerPass);


		$menegerEmail= mysqli_real_escape_string($this->db->link,$menegerEmail);
		$menegerPass= mysqli_real_escape_string($this->db->link,$menegerPass);

		if(empty($menegerEmail) || empty($menegerPass)){
			$loginmsg = "Email or Password must not empty";
			return $loginmsg;
		}

		else{

			$query = "SELECT * FROM meneger WHERE menegerEmail='$menegerEmail' AND menegerPass='$menegerPass'";

			$result = $this->db->select($query);

			if($result !=false){

					$value=$result->fetch_assoc();
					Session::set("menegerlogin",true);
					Session::set("menegerId",$value['menegerId']);
					Session::set("first_Name",$value['first_Name']);
					header("Location:index.php");

			}else{

				$loginmsg = "Email or Password not match";
				return $loginmsg;

			}

		}




	}


}


?>