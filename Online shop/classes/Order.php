
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>



<?php 
	class Order{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}

	
	public function getAdd($id,$date){
		$query ="SELECT c.*,SUM(o.quantity) as totalquantity,SUM(o.price) as totalprice
		FROM tb_order as o,customer as c
		WHERE o.id=c.id AND o.id='$id' ANd o.date = '$date'";
		$result =$this->db->select($query);
		return $result;
	}

	public function getCPro($id,$date){

		$query ="SELECT * FROM tb_order
		WHERE id='$id' ANd date = '$date'";
		$result =$this->db->select($query);
		return $result;
	}


}



?>