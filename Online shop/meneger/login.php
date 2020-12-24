<?php include '../classes/Menegerlogin.php';?>

<?php

	$al= new Menegerlogin();

	if($_SERVER['REQUEST_METHOD'] == 'POST'){

		$menegerEmail = $_POST['menegerEmail'];
		$menegerPass = $_POST['menegerPass'];

		$loginChk = $al->menegerLogin($menegerEmail,$menegerPass);


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
		<label style="color:white;" for="menegerEmail">Email Id :   </label>
		<input type="text" name="menegerEmail" placeholder="Enter Email" required=""/><br/>
		<label style="color:white;" for="menegerPass">Password: </label>
		<input type="password" name="menegerPass" placeholder="Enter password" required=""/>
		<input class="btm" type="submit" name="submit" value="Login"/>
	</form>
</div>
</div>
<div id="footer">
<b>The Hutum pecha Dot Com</b> &copy; 2018 . All Rights Reserved. 
</div>
</body>
</html>