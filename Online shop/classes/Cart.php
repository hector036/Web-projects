
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>


<?php

	class Cart{



	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}

	public function addToCart($quantity,$id){


		$quantity = mysqli_real_escape_string($this->db->link,$quantity);
		$productId = mysqli_real_escape_string($this->db->link,$id);
		$sId =session_id();

		$query = "SELECT * FROM product WHERE productId='$productId'";
		$result =$this->db->select($query)->fetch_assoc();

		$productName = $result['productName'];


		$price = $result['price'];
		$image = $result['image'];

		$proquantity = $result['quantity'];

		$cid= Session::get('id');


		if($proquantity==0){

		$cquery = "UPDATE product SET quantity=100 WHERE productId='$productId'";
		$value =$this->db->update($cquery);

		}

		$query = "SELECT * FROM product WHERE productId='$productId'";
		$result =$this->db->select($query)->fetch_assoc();

		$proquantity = $result['quantity'];

		if($quantity>$proquantity){

			$msg="This product is limited. Available quantities are ".$proquantity;
			return $msg;
		}else{

		$squery="INSERT INTO cart(sId,productId,productName,price,quantity,image,id) VALUES('$sId','$productId','$productName','$price','$quantity','$image','$cid')";
		$inserted_row = $this->db->insert($squery);

		if($inserted_row){
			header("Location:cart.php");
		}
	}

	}


	public function getCartProduct(){

		$sId = session_id();

		$cid= Session::get('id');

		$query = "SELECT * FROM cart WHERE id='$cid' ORDER BY cartId ASC";
		$result =$this->db->select($query);
		return $result;




	}


	public function delProFrCart($id){


		$query = "DELETE FROM cart WHERE cartId='$id'";

		$deldata =$this->db->delete($query);

		if($deldata){

			echo "<script>window.location = 'cart.php'</script>";
		}


	}


	public function orderProduct($id){

		$query = "SELECT * FROM cart WHERE id='$id' ORDER BY cartId ASC";
		$getpro =$this->db->select($query);

		if($getpro){


			while($result=$getpro->fetch_assoc()){

				$productId = $result['productId'];
				$productName = $result['productName'];
				$quantity = $result['quantity'];
				$price = $result['price']*$result['quantity'];
				$image = $result['image'];

				$squery="INSERT INTO tb_order(id,productId,productName,quantity,price,image) VALUES('$id','$productId','$productName','$quantity','$price','$image')";

				$inserted_row = $this->db->insert($squery);


			}
		}



	}

	public function delCart($id){

		$query = "DELETE FROM cart WHERE id='$id'";

		$data =$this->db->delete($query);		


	}

	public function getAllOrderPro(){


		$query = "SELECT o.id,SUM(o.quantity) as totalquantity,SUM(o.price) as totalprice,o.date, c.firstname FROM tb_order as o,customer as c WHERE o.id=c.id GROUP BY o.id,o.date ORDER BY o.date DESC";
		$result =$this->db->select($query);
		return $result;

	}


	public function delOrderById($id){


		$delquery = "DELETE FROM tb_order WHERE orderId ='$id'";
		$deldata = $this->db->delete($delquery);


	}




	}


?>