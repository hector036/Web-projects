
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>



<?php 
	class Brand{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}

	public function brandInsert($brandName){
		/*$catName=$this->fm->validation($catName);*/
		
		$brandName = mysqli_real_escape_string($this->db->link,$brandName);

		if(empty($brandName)){
			$msg = "<span class='error'>Brand feild must not empty</span>";
			return $msg;
		}

		else{

			$query="INSERT INTO brand(brandName) VALUES('$brandName')";
			$brandinsert=$this->db->insert($query);
			if($brandinsert){

				$msg="<span class='success'>Brand Inserted Successfully.</span>";
				return $msg;

			}
			else{
				$msg="<span class='error'>Brand Not Inserted.</span>";
				return $msg;


			}
		}



	}

	public function getSingleBrand($id){
		$query ="SELECT * FROM brand WHERE brandId='$id'";
		$result =$this->db->select($query);
		return $result;


	}



	public function getAllBrand(){
		$query ="SELECT * FROM brand ORDER BY brandId ASC";
		$result =$this->db->select($query);
		return $result;
	}



	public function delBrandById($id){

		$query = "DELETE FROM brand WHERE brandId='$id'";

		$deldata =$this->db->delete($query);
	}






}



?>