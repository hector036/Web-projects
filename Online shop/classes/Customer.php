
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>



<?php

	class Customer{



	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}


	public function customerRegis($data){


		$firstname	= mysqli_real_escape_string($this->db->link,$data['firstname']);
		$lastname	= mysqli_real_escape_string($this->db->link,$data['lastname']);
		$address	= mysqli_real_escape_string($this->db->link,$data['address']);
		$mobilenumber= mysqli_real_escape_string($this->db->link,$data['mobilenumber']);
		$email		= mysqli_real_escape_string($this->db->link,$data['email']);
		$city		= mysqli_real_escape_string($this->db->link,$data['city']);
		$zipcode	= mysqli_real_escape_string($this->db->link,$data['zipcode']);
		$password	= mysqli_real_escape_string($this->db->link,$data['password']);

		if($firstname == "" || $lastname == "" || $address == "" || $mobilenumber == "" || $email == "" || $city == "" || $zipcode == "" || $password == ""){

    		$msg="<span class='error'>Fields must not be empty.</span>";
			return $msg;

    	}

    	$mailquery = "SELECT * FROM customer WHERE email='$email' LIMIT 1";

    	$mailchk = $this->db->select($mailquery);

    	if($mailchk != false){
    		$msg="<span class='error'>Email already exist</span>";
			return $msg;

    	}else{

    		$query = "INSERT INTO customer(firstname,lastname,address,mobilenumber,email,city,zipcode,password) VALUES('$firstname','$lastname','$address','$mobilenumber','$email','$city','$zipcode','$password')";

    		$inserted_row=$this->db->insert($query);

    		if($inserted_row){

				header("Location:success.php");
			}
			else{
				
				header("Location:register.php");


			}

    	}

	}


	public function customerLogin($data){

		$email		= mysqli_real_escape_string($this->db->link,$data['email']);
		$password	= mysqli_real_escape_string($this->db->link,$data['password']);

		if(empty($email) || empty($password)){

			$msg="<span class='error'>Fields must not be empty.</span>";
			return $msg;
		}

		$query = "SELECT * FROM customer WHERE email='$email' AND password ='$password'";

		$result = $this->db->select($query);

		if($result != false){

			$value = $result->fetch_assoc();
			Session::set("cuslogin",true);
			Session::set("id",$value['id']);
			Session::set("firstname",$value['firstname']);
			header("Location:index.php");
		}else{

			$msg="<span class='error'>Email id or Password not match</span>";
			return $msg;

		}

	}


	}


?>