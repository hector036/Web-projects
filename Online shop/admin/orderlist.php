<?php include '../classes/Cart.php';?>
<?php include_once '../helpers/Format.php';?>

<?php

	$ct = new Cart();
	$fm = new Format();


?>

<?php

if(isset($_GET['delorder'])){

	$id = $_GET['delorder'];
	$delOrder = $ct->delOrderById($id);

}

?>


<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block"> 

        <?php
        if(isset($delpro)){

        	echo $delpro;
        }

        ?> 
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Order Time</th>
					<th>Customer</th>
					
					<th>Total Quantity</th>
					<th>Total Price</th>
					<th>View Products</th>
					<th>Action</th>
					
				</tr>
			</thead>
			<tbody>

				<?php

				$getOd = $ct->getAllOrderPro();

					if($getOd){
						$i=0;
						while($result=$getOd->fetch_assoc()){

							$i++;
					
				?>
				<tr class="odd gradeX">
					<td><?php echo $fm->formatDate($result['date']);?></td>
					<td><?php echo $result['firstname'];?></td>
					
					<td><?php echo $result['totalquantity'];?></td>
					<td>$<?php echo $result['totalprice'];?></td>
					<td><a href="orderedproduct.php?id=<?php echo $result['id'];?>&date=<?php echo $result['date'];?>">View</a></td>
					<td><a onclick="return confirm('Are you sure to delete?')" href="?id=<?php echo $result['id'];?>&date=<?php echo $result['date'];?>">Delete</a></td>
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
