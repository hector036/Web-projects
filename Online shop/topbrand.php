
<?php
	if(!isset($_GET['brandId']) || $_GET['brandId'] == NULL){
		echo "<script>window.location = 'index.php';</script>";
	}else{

		$id=$_GET['brandId'];
	}



?>


<?php include 'inc/header.php';?>


<div class="row">
	
  <div class="leftcolumn">
	
			
		<div class="card">
			
			
			<div class="content_top">
				<div class="heading">
					
					<?php
						$getBrand = $bd->getSingleBrand($id);

						if($getBrand){

							$result = $getBrand->fetch_assoc();
						
					?>

				<h3><?php echo $result['brandName'];?></h3>
				<?php } ?>
				</div>
				<div class="clear"></div>
			</div>

			<?php 
			$getBpd = $pd->getBProduct($id);

			if($getBpd){

				while ($result=$getBpd->fetch_assoc()) {
			


			?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'];?>"><img src="meneger/<?php echo $result['image'];?>" alt="" /></a>
					 <h2><?php echo $result['productName'];?></h2>
					 <p><?php echo $fm->textShorten($result['body'], 50);?></p>
					 <p><span class="price">$<?php echo $result['price'];?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'];?>" class="details">Details</a></span></div>
				</div>

			<?php } }else{

				echo "<p><b>Products of this Category are not available.</b></p>";
			}



			?>
			
		</div>
			
			

</div>
	
  <div class="rightcolumn">
    <div class="card2">
      <ul>
		<li><a class="active" ><b>Catagories</b></a></li>
		<?php 
			$getCat = $cat->getAllCat();

			if($getCat){
				while($result=$getCat->fetch_assoc()){

		?>
		<li><a href="productsByCategory.php?catId=<?php echo $result['catId']?>"><?php echo $result['catName']?></a></li>
		
		<?php } }?>
		</ul>
  </div>
</div>
</div>
<?php include 'inc/footer.php';?>


