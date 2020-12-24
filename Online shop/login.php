<?php include 'inc/top.php';?>



<?php

	$login = Session::get("cuslogin");
	if($login == true){

		header("Location:index.php");
	}


?>


<?php
	
	if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['submit'])){

		$customerLog = $cmr->customerLogin($_POST);
	}



?>




<!doctype html>

<html>
<head>
<link type="text/css" rel="stylesheet" 
href="login.css">

</head>

<body style="background: url(images/black_bg.jpg) 0 0 no-repeat; background-size: 1350px 645px; background-position: right;">
<div id="header">
 <h3> Login for <b>HUTOOM PECHA</b></h3>
 
</div>

<div class="cont">

<div id="input">
	<?php if(isset($customerLog)){

		echo $customerLog;

	} ?>
	<form method="post" action="login.php">
		<label style="color:white;" for="email">Email Id :   </label>
		<input type="text" name="email" placeholder="Enter Email" required=""/><br/>
		<label style="color:white;" for="password">Password: </label>
		<input type="password" name="password" placeholder="Enter password" required=""/>
		
		<input class="btm" type="submit" name="submit" value="Login"/>
	</form>
</div>
</div>
<div id="footer">
<b>Hutum pecha Dot Com</b> &copy; 2018 . All Rights Reserved. 
</div>
</body>
</html>