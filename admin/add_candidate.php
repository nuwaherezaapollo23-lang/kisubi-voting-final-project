<?php
include("../config.php");

if(isset($_POST['add'])){
$name=$_POST['name'];
$reg=$_POST['reg_no'];
$faculty=$_POST['faculty'];
$position=$_POST['position'];

$sql="INSERT INTO candidates(name,reg_no,faculty,position_id)
VALUES('$name','$reg','$faculty','$position')";

mysqli_query($con,$sql);

echo "Candidate Added";

}
?>

<link rel="stylesheet" href="../css/style.css">

<div class="container">

<h2>Add Candidate</h2>

<form method="POST">

<input type="text" name="name" placeholder="Candidate Name"><br><br>

<input type="text" name="reg_no" placeholder="Registration Number"><br><br>

<input type="text" name="faculty" placeholder="Faculty"><br><br>

<input type="number" name="position" placeholder="Position ID"><br><br>

<button name="add">Add Candidate</button>

</form>

</div>