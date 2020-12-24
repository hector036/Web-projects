
<?php  

    include '../lib/SessionAdmin.php';
    SessionAdmin::checkSession();

  ?>


<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/grid.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/layout.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/nav.css" media="screen" />
    <link href="css/table/demo_page.css" rel="stylesheet" type="text/css" />
    <!-- BEGIN: load jquery -->
    

</head>
<body>
    <div class="container_12">
        <div class="grid_12 header-repeat">
            <div id="branding">
			<!--
                <div class="floatleft logo">
                    <img src="img/livelogo.png" alt="Logo" />
				</div>
				-->
				<div class="floatleft middle">
					<h1>Hutoom Pecha Dot Com</h1>
					<p>www.hutoompecha.com</p>
				</div>
				
                <div class="floatright">

                    <?php

                    if(isset($_GET['action']) && $_GET['action']=="logout"){

                        SessionAdmin::destroy();
                    }

                    ?>
                    
                    <div class="floatleft marginleft10">
                        <ul class="inline-ul floatleft">
                            <li>Hello <?php echo SessionAdmin::get('first_Name')?></li>
                            <li><a href="?action=logout">Logout</a></li>
                        </ul>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="grid_12">
            <div class="navbar">
			<a href="index.php">Home</a>
			<a href="#news">Visit Website</a>
			<a href="changepassword.php">Change Password</a>
            <a href="orderlist.php">Orders</a>
            <a href="productlist.php">Product List</a>
            <a href="catlist.php">Category List</a>
            <a href="brandlist.php">Brand List</a>
			 
        </div>
        <div class="clear">
        </div>
    