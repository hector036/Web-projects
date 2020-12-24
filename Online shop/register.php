
<?php

include_once 'classes/Customer.php';

$cmr = new Customer();
?>


<?php
	
	if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['submit'])){

		$customerReg = $cmr->customerRegis($_POST);
	}



?>


<!doctype html>

<html>
<head>
<link type="text/css" rel="stylesheet" 
href="register.css">

</head>

<body style="background: url(images/black_bg.jpg) 0 0 no-repeat; background-size: 1350px 697px; background-position: right;">
<div id="header">
 <h3> HUTUM PECHA Dot Com</h3>
 
</div>

<div id="register">
	<h4>Register New Account</h4>
	<?php if(isset($customerReg)){

		echo $customerReg;

	} ?>
	<form method="post" action="">
		
		<input type="text" name="firstname" placeholder="First Name" required="" />
		<input type="text" name="lastname" placeholder="Last Name" required=""/>
		<input type="text" name="address" placeholder="Address" required="" />
		<input type="text" name="mobilenumber" placeholder="Mobile Number +880" required="" />
		<input type="text" name="email" placeholder="Email Id" required="" />
		<input type="text" name="city" placeholder="City" required="" />
		<input type="text" name="zipcode" placeholder="Zip Code" required="" />
		
		
		<input type="password" name="password" placeholder="Password" required="" /><br/>
		<input class="btm" type="submit" name="submit" value="Create Account"/>
	</form>
</div>

<div id="footer">
<b>Hutum pecha Dot Com</b> &copy; 2018 . All Rights Reserved. 
</div>
</body>
</html>


