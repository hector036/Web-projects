<?php include '../classes/Employee.php';?>


<?php
$em = new Employee();

?>




<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Category List</h2>
                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Employee Name</th>
							<th>Mobile Num</th>
							<th>Email Id</th>
							<th>Salary</th>
							<th>Address</th>
							
						</tr>
					</thead>
					<tbody>

						<?php

							$getem = $em->getAllEmployee();
							if($getem){
								$i =0;
								while($result = $getem->fetch_assoc()){
									$i++;

						?>
						<tr>
							<td><?php echo $i;?></td>
							<td><?php echo $result['first_Name'];?>&nbsp<?php echo $result['last_Name'];?></td>
							<td><?php echo $result['mobilenumber'];?></td>
							<td><?php echo $result['employeeEmail'];?></td>
							<td><?php echo $result['salary'];?></td>
							<td><?php echo $result['address'];?></td>
							
						</tr>
					<?php } } ?>

					</tbody>
				</table>
               </div>
            </div>
        </div>
<script type="text/javascript">
	$(document).ready(function () {
	    setupLeftMenu();

	    $('.datatable').dataTable();
	    setSidebarHeight();
	});
</script>
<?php include 'inc/footer.php';?>

