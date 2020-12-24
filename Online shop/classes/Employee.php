
<?php 

	$filepath = realpath(dirname(__FILE__));

	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');

	

?>



<?php 
	class Employee{

	private $db;
	private $fm;

	public function __construct() {

			$this->db= new Database();
			$this->fm= new Format();

	}

	
	public function getAllEmployee(){
		$query ="SELECT * FROM employee ORDER BY employeeId ASC";
		$result =$this->db->select($query);
		return $result;
	}

	public function employeeInsert($id,$employeeId,$date){

		$supquery="SELECT * FROM supply WHERE id='$id' AND orderTime='$date'";
		$supresult =$this->db->select($supquery);

		if($supresult){
			$msg="<span class='error'>Employee Already Assigned.</span>";
			return $msg;

		}else{

		$query ="INSERT INTO supply(id,employeeId,orderTime) VALUES('$id','$employeeId','$date')";
		$result =$this->db->insert($query);
		if($result){
			$msg="<span class='success'>Employee Successfully Assigned.</span>";
			return $msg;
		}

		}

	}

	public function getAllMEm(){
		$menegerId=Session::get('menegerId');
		$query ="SELECT * FROM employee WHERE menegerId='$menegerId' ORDER BY employeeId ASC";
		$result =$this->db->select($query);
		return $result;

	}

	public function getAllManager(){

		$query ="SELECT m.*,d.deptName FROM meneger as m,department as d WHERE m.deptId=d.deptId ORDER BY m.menegerId ASC";
		$result =$this->db->select($query);
		return $result;
	}

}



?>