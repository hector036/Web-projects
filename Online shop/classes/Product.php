<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>

<?php
	class Product{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}


	public function productInsert($data,$file){

		$productName= mysqli_real_escape_string($this->db->link,$data['productName']);
		$catId= mysqli_real_escape_string($this->db->link,$data['catId']);
		$brandId= mysqli_real_escape_string($this->db->link,$data['brandId']);
		$body= mysqli_real_escape_string($this->db->link,$data['body']);
		$price= mysqli_real_escape_string($this->db->link,$data['price']);
		$buyprice= mysqli_real_escape_string($this->db->link,$data['buyprice']);
		$quantity= mysqli_real_escape_string($this->db->link,$data['quantity']);
		$type= mysqli_real_escape_string($this->db->link,$data['type']);


		$permited  = array('jpg', 'jpeg', 'png', 'gif');
    	$file_name = $file['image']['name'];
    	$file_size = $file['image']['size'];
    	$file_temp = $file['image']['tmp_name'];

    	$div = explode('.', $file_name);
    	$file_ext = strtolower(end($div));
    	$unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
    	$uploaded_image = "upload/".$unique_image;


    	if($productName == "" || $catId == "" || $brandId == "" || $body == "" || $price == "" || $type == ""){

    		$msg="<span class='error'>Fields Not Inserted.</span>";
			return $msg;

    	}

    	else {

    		move_uploaded_file($file_temp, $uploaded_image);

    		$query = "INSERT INTO product(productName,catId,brandId,body,price,buyprice,quantity,image,type) VALUES('$productName','$catId','$brandId','$body','$price','$buyprice','$quantity','$uploaded_image','$type')";

    		$inserted_row=$this->db->insert($query);

    		if($inserted_row){

				$msg="<span class='success'>Product Inserted Successfully.</span>";
				return $msg;

			}
			else{
				$msg="<span class='error'>Product Not Inserted.</span>";
				return $msg;


			}

    	}




	}

	public function getAllProduct(){

		$query ="SELECT p.*, c.catName, b.brandName
				FROM product as p,category as c, brand as b
				WHERE p.catId=c.catId AND p.brandId=b.brandId
				ORDER BY p.productId ASC ";

		$result = $this->db->select($query);

		return $result;


	}


	public function delProductById($id){

		$query = "SELECT * FROM product WHERE productId ='$id'";
		$getData =$this->db->select($query);

		if($getData){

				$delImg = $getData->fetch_assoc();
				$dellink = $delImg['image'];
				unlink($dellink);
		}

		$delquery = "DELETE FROM product WHERE productId ='$id'";
		$deldata = $this->db->delete($delquery);

	}


		public function getFeatureProduct(){


		$query ="SELECT * FROM product WHERE type='0' ORDER BY productId ASC LIMIT 20";
		$result =$this->db->select($query);
		return $result;

		}


		public function getSinglePro($id){

			$query ="SELECT p.*, c.catName, b.brandName
					FROM product as p,category as c, brand as b
					WHERE p.catId=c.catId AND p.brandId=b.brandId AND p.productId='$id' ";

			$result = $this->db->select($query);

			return $result;


		}

		public function getCProduct($id){

		$query ="SELECT * FROM product WHERE catId ='$id' ORDER BY productId ASC";
		$result =$this->db->select($query);
		return $result;


		}

		public function getBProduct($id){

		$query ="SELECT * FROM product WHERE brandId ='$id' ORDER BY productId ASC";
		$result =$this->db->select($query);
		return $result;
		}





	}



?>