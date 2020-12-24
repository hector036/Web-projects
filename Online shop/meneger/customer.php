
<?php include '../classes/Employee.php';?>
<?php include '../classes/Order.php';?>
<?php include '../classes/Product.php';?>

<?php

    $em = new Employee();
    $or = new Order();

    if(isset($_GET['id']) && isset($_GET['date'])){

        $id=$_GET['id'];
        $date=$_GET['date'];

    }

    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){

        $employeeId=$_POST['employeeId'];
        $insertEm = $em->employeeInsert($id,$employeeId,$date);


    }


?>

<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Customer Address</h2>
        <div class="block"> 
        <?php
            if(isset($insertEm)){

                echo $insertEm;
            }


        ?>

         <form action="" method="post">
            <table class="form">
                <?php 

                $getadd = $or->getAdd($id,$date);

                if($getadd){

                    $result = $getadd->fetch_assoc();
                

                ?>
               
                <tr>
                    <td>
                        <label>Name</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['firstname'];?>&nbsp <?php echo $result['lastname'];?></b><br><br></td>
                </tr>
                
                <tr>
                    <td>
                        <label>Address</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['address'];?></b><br></td>
                </tr>

                <tr>
                    <td>
                        <label>City</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['city'];?></b><br></td>
                </tr>
                <tr>
                    <td>
                        <label>Zip Code</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['zipcode'];?></b><br></td>
                </tr>
                <tr>
                    <td>
                        <label>Mobile Number</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['mobilenumber'];?></b><br></td>
                </tr>
                <tr>
                    <td>
                        <label>Total Quantity</label>
                    </td>
                    <td><b>:&nbsp &nbsp <?php echo $result['totalquantity'];?></b></td>
                </tr>
                <tr>
                    <td>
                        <label>Total Price</label>
                    </td>
                    <td><b>:&nbsp &nbsp $<?php echo $result['totalprice'];?><br><br></b></td>
                </tr>
                <?php } ?>

				<tr>
                    <td>
                        <label>Assign Employee</label>
                    </td>
                    <td>
                        <select id="select" name="employeeId">
                            <option>Select Employee</option>
                        <?php
                        
                        $em = new Employee();
                        $getEm = $em->getAllMEm();
                        if($getEm){

                            while($result = $getEm->fetch_assoc()){

                        ?>    

                            <option value="<?php echo $result['employeeId'];?>"><?php echo $result['first_Name'];?>&nbsp<?php echo $result['last_Name'];?></option>
                        <?php } }?>    
                        </select>
                    </td>
                </tr>

				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Save" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>


