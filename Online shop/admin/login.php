<?php include '../classes/Adminlogin.php';?>

<?php

	$al= new Adminlogin();

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$adminEmail = $_POST['adminEmail'];
		$adminPass = $_POST['adminPass'];

		$loginChk = $al->adminLogin($adminEmail,$adminPass);


	}

?>

<!doctype html>

<html>
<head>
<link type="text/css" rel="stylesheet" 
href="login.css">

</head>

<body style="background: url(img/black_bg.jpg) 0 0 no-repeat; background-size: 1350px 645px; background-position: right;">
<div id="header">
 <h3> Login for <b>HUTOOM PECHA</b></h3>
 
</div>

<div class="cont">

<div id="input">
	<span style="color:red;font-size:16px;text-align: center;">
		<?php

		if(isset($loginChk)){
			echo $loginChk;
		}


		?>

	</span>
	<form method="post" action="login.php">
		<label style="color:white;" for="adminEmail">Email Id :   </label>
		<input type="text" name="adminEmail" placeholder="Enter Email" required=""/><br/>
		<label style="color:white;" for="adminPass">Password: </label>
		<input type="password" name="adminPass" placeholder="Enter password" required=""/>
		<input class="btm" type="submit" name="submit" value="Login"/>
	</form>
</div>
</div>
<div id="footer">
<b>The Hutum pecha Dot Com</b> &copy; 2018 . All Rights Reserved. 
</div>
</body>
</html>