<?php include '../classes/Order.php';?>
<?php include_once '../helpers/Format.php';?>

<?php

	$or = new Order();
	$fm = new Format();


?>

<?php

	if(isset($_GET['id']) && isset($_GET['date'])){

        $id=$_GET['id'];
        $date=$_GET['date'];

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
					<th>SL</th>
					<th>Product Name</th>
					<th>Image</th>
					<th>Quantity</th>
					<th>Sub Total</th>
					
					
				</tr>
			</thead>
			<tbody>

				<?php

				$getcpd = $or->getCPro($id,$date);

					if($getcpd){
						$i=0;
						while($result=$getcpd->fetch_assoc()){

							$i++;
					
				?>
				<tr class="odd gradeX">
					<td><?php echo $i;?></td>
					<td><?php echo $result['productName'];?></td>
					<td><img src="<?php echo $result['image'];?>" height="40px" width="60px" /></td>
					<td><?php echo $result['quantity'];?></td>
					<td>$<?php echo $result['price'];?></td>
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
