

<?php include 'inc/header.php';?>


<div class="row">
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/banner1-1350x570-edited.jpg" style="width:100%">
  <div class="text">A Fresh Approach To Shopping</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/hakkımızda_slider-edited.jpg" style="width:100%">
  <div class="text">Save money, Live better</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/UK-Slider-Pic-Resized-edited.jpg" style="width:100%">
  <div class="text">You Shop & We Donate</div>
</div>



<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>

<br>
<div style="text-align:right">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>



var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
	
}
</script>
  <div class="leftcolumn">
	
			
		<div class="card">
			
			
			<div class="content_top">
				<div class="heading">
				<h3>Popular Products</h3>
				</div>
				<div class="clear"></div>
			</div>

			<?php 
			$getFpd = $pd->getFeatureProduct();
			if($getFpd){

				while ($result=$getFpd->fetch_assoc()) {
			


			?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'];?>"><img src="meneger/<?php echo $result['image'];?>" alt="" /></a>
					 <h2><?php echo $result['productName'];?></h2>
					 <p><?php echo $fm->textShorten($result['body'], 50);?></p>
					 <p><span class="price">$<?php echo $result['price'];?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'];?>" class="details">Details</a></span></div>
				</div>

			<?php } }?>

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


