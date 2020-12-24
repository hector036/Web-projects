
<?php include 'top.php';?>

<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>

<!DOCTYPE html>
<html>
<title>Hutoom Pecha Dot Com | A smart way for shopping.</title>
<head>
<link type="text/css" rel="stylesheet" 
href="index.css">
<link type="text/css" rel="stylesheet" 
href="allcss.css">
</head>
<body>

<div class="header">
  <div class="logo">
				<a href="index.php"><img src="images/26175809_1441883722577471_565780441_n-edit-2.png" alt="" /></a>
			</div>
			<div  style="background: url(images/moving-clipart-owl-2-edit3.png) 0 0 no-repeat;background-position: right; " class="header_top_right">
			    <div class="search_box">
				    <form>
				    	<input type="text" placeholder="Seacrh for products" }"><input style="background: url(images/icon-search-edit.png); background-repeat: no-repeat; background-size: 30px 30px; background-position: center;" type="submit" value="">
				    </form>
			    </div>

					<?php

                    if(isset($_GET['action']) && $_GET['action']=="logout"){

                        session_destroy();
  						header("Location:index.php");
                    }

                    ?>


<?php

	$login = Session::get("cuslogin");
	if($login == false){
?>
			<div class="register"><a href="register.php">Register</a></div> 
			<div class="sep">|</a></div> 
			
		   <div class="login"><a href="login.php">Login</a></div>
 <?php } else { ?>

 			<div class="register"><a href=""><?php echo Session::get('firstname')?></a></div> 
			<div class="sep">|</a></div> 
			
		   <div class="login"><a href="?action=logout">Logout</a></div>

		 <?php } ?>


	 </div>
</div>

<div class="topnav">
  <a id="first"href="index.php"><b>Home</b></a>
  <a href="cart.php"><b>Cart</b></a>
  <a href="topbrandpage.php"><b>Top Brand</b></a>
  <a href="#" ><b>About</b></a>
  <a href="#" ><b>Contact</b></a>
</div>



