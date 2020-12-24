<?php include 'inc/header.php';?>


<?php

	$login = Session::get("cuslogin");
	if($login == false){

		header("Location:login.php");
	}


?>

<?php

	if(isset($_GET['delpro'])){


		$id = $_GET['delpro'];
		$delPro = $ct->delProFrCart($id);
	}

?>




<?php
	$sum=0;
?>
<div class="row">


	<div class="details">
		  	
			<div class="carttab">
				<div class="cart_top">
			    	<h2>Your Cart</h2>
					</div>
						<table class="tblone">
							<tr>
								<th width="5%">SL</th>
								<th width="30%">Product Name</th>
								<th width="15%">Image</th>
								<th width="15%">Price</th>
								<th width="10%">Quantity</th>
								<th width="20%">Total Price</th>
								<th width="10%">Action</th>
							</tr>
							<?php

							$getPro = $ct->getCartProduct();
								if($getPro){

									$i=0;
									$sum=0;
									while($result=$getPro->fetch_assoc()){
										$i++;

							?>
							<tr>
								<td><?php echo $i;?></td>
								<td><?php echo $result['productName'];?></td>
								<td><img src="meneger/<?php echo $result['image'];?>"alt=""/></td>
								<td>$<?php echo $result['price'];?></td>
								<td><?php echo $result['quantity'];?></td>
								<td>$<?php echo $result['quantity']*$result['price'];?></td>
								<td><a onclick="return confirm('Are you sure to delete?')" href="?delpro=<?php echo $result['cartId'];?>">X</a></td>
							</tr>
						<?php
							$sum = $sum + $result['quantity']*$result['price'];

						?>
						<?php } }?>	
							
						</table>
						
			</div>
			<div class="myclass">
				<div class="cal">
					<table style="float:right;text-align:left;margin:30px;" width="30%">
							<tr>
								<th>Sub Total : </th>
								<td>$<?php echo $sum;?></td>
							</tr>
							<tr>
								<th>VAT : </th>
								<td>17%</td>
							</tr>
							<tr>
								<th>Grand Total :</th>
								<td>$<?php echo $sum+$sum*0.17;?></td>
							</tr>
					   </table>
					 </div>
					<div class="shopping">
						
						<div class="shopright">
							<?php 
							if($getPro){

							?>
							<a href="order.php"> <img src="images/Order-Now-PNG-Pic.png" alt="" /></a>
							<?php } else {?>

							<a href=""> <img src="images/Order-Now-PNG-Pic.png" alt="" /></a>

							<?php }?>

						</div>
					</div>
					</div>
    	


	</div>

 


</div>




<?php include 'inc/footer.php';?>