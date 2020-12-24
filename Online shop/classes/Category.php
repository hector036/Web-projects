
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');
	

?>


<?php 
	class Category{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}

	public function catInsert($catName){
		/*$catName=$this->fm->validation($catName);*/
		
		$catName= mysqli_real_escape_string($this->db->link,$catName);

		if(empty($catName)){
			$msg = "<span class='error'>Category feild must not empty</span>";
			return $msg;
		}

		else{

			$query="INSERT INTO category(catName) VALUES('$catName')";
			$catinsert=$this->db->insert($query);
			if($catinsert){

				$msg="<span class='success'>Category Inserted Successfully.</span>";
				return $msg;

			}
			else{
				$msg="<span class='error'>Category Not Inserted.</span>";
				return $msg;


			}
		}



	}



	public function getAllCat(){
		$query ="SELECT * FROM category ORDER BY catId ASC";
		$result =$this->db->select($query);
		return $result;
	}



	public function delCatById($id){

		$query = "DELETE FROM category WHERE catId='$id'";

		$deldata =$this->db->delete($query);
	}

	public function getSingleCat($id){
		$query ="SELECT * FROM category WHERE catId='$id'";
		$result =$this->db->select($query);
		return $result;

	}






}



?>