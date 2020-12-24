<?php include 'inc/header.php';?>

<?php
	if(!isset($_GET['proid']) || $_GET['proid'] == NULL){
		echo "<script>window.location = 'index.php';</script>";
	}else{

		$id=$_GET['proid'];
	}

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

	$login = Session::get("cuslogin");

	if($login == false){

		header("Location:login.php");
	}
	else{

		$quantity=$_POST['quantity'];

		if($quantity <= 0){
			echo "<script>window.location = '';</script>";
		}
		else{
			$addCart = $ct->addToCart($quantity,$id);
		}
	}
	

	}



?>


<div class="row">
	<div class="details">
	
		<div class="cont-desc span_1_of_2">	


				<?php

				$getPd = $pd->getSinglePro($id);
				if($getPd){
					while ($result=$getPd->fetch_assoc()) {
		
				?>			
					<div class="grid images_3_of_2">
						<img src="meneger/<?php echo $result['image'];?>" alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2><?php echo $result['productName'];?></h2>
					<p><?php echo $fm->textShorten($result['body'],160);?></p>					
					<div class="price">
						<p><b>Price: </b><span>$<?php echo $result['price'];?></span></p>
						<p><b>Category: </b><span><?php echo $result['catName'];?></span></p>
						<p><b>Brand: </b><span><?php echo $result['brandName'];?></span></p>
					</div>
				<div class="add-cart">
					<form action="" method="post">
						<input type="number" class="buyfield" name="quantity" value="1"/>
						<input type="submit" class="buysubmit" name="submit" value="Buy Now"/>
					</form>				
				</div><br>
				<span style="font-size: 15px;margin-top:1px;color:#969696;font-family: verdana, arial, helvetica, helve, sans-serif;">
					<?php

					if(isset($addCart)){

					echo $addCart;
				}
					?>
				</span>
			</div>
			<div class="product-desc">
			<h2>Product Details</h2>
			<p><?php echo $result['body'];?></p>
	        
	    </div>

	    <?php } }?>
				
	</div>
	
	
	
	
	</div>

</div>



<?php include 'inc/footer.php';?>