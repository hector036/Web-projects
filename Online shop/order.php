<?php include 'inc/header.php';?>


<style>


.orderdiv{
	
	
	background: #fff;
	padding: 20px 10px 10px 10px;
	margin-top: 4px;
	border-radius: 5px;
}

.ordertop{
	
	
	padding: 8px 70px;
    border: 1.8px solid #EBE8E8;
    border-radius: 3px;
    width: 100%;
    margin-top: 15px;
}
	
.order_head h5{
	
	font-family: 'Monda', sans-serif;
    font-size: 25px;
    color: #595959;
    text-transform: uppercase;
	
}

.image_order{
	
	margin-top: 20px;
	padding: 40px 10px 40px 47px;
	margin-bottom: 30px;
	border:1px solid #EBE8E8;
	height: 650px;
	
}

.image_order a{
	
	
	padding : 10px;
	/*margin : 5px 15px 20px 30px;*/
	margin: 1% 1.6% 1% 2%;
	float: left;
	display: block;
	box-shadow: 0px 0px 3px rgb(150, 150, 150);
	
}

.image_order a:hover{
	
	opacity: 0.85;
	
}

.image_order a img{
	
	
	padding : 10px;
	
	
	
}



</style>



<?php
	
	if(isset($_GET['methodid']) && $_GET['methodid']=="method"){

		$id = Session::get("id");
		$insertOrder = $ct->orderProduct($id);
		$deldata = $ct->delCart($id);
		header("Location:ordersuccess.php");

	}
	

	

?>

<div class="row">

	<div class="orderdiv">
	
		<div class="ordertop">
				<div class="order_head">
				<h5>Select Payment Method :</h5>
				</div>
				<div class="clear"></div>
		</div>
		
		
		<div class="image_order">
		
			
			
			<a href="?methodid=method"><img src="images/cod_logo.jpg" alt="" height="200" width="300"></a>
			
			<a href=""><img src="images/visa-1.jpg" alt="" height="200" width="300"></a>
			
			<a href=""><img src="images/mastercard_PNG13.png" alt="" height="200" width="300"></a>
			<a href=""><img src="images/BKash-Logo-English.jpg" alt="" height="200" width="300"></a>
			
			<a href=""><img src="images/dbbl.jpg" alt="" height="200" width="300"></a>
			
			<a href=""><img src="images/payza.png" alt="" height="200" width="300"></a>
			
			
		
		
		</div>
	
	
	
	</div>


</div>


<?php include 'inc/footer.php';?>