<?php
include("config.php");

$message = "";

if(isset($_POST['register'])){

$name = $_POST['name'];
$reg = $_POST['reg_no'];
$gender = $_POST['gender'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql = "INSERT INTO voters(name,reg_no,gender,email,password)
VALUES('$name','$reg','$gender','$email','$password')";

$result = mysqli_query($con,$sql);

if($result){
$message = "Data inserted successfully";
}else{
$message = "Error inserting data";
}

}
?>

<link rel="stylesheet" href="css/style.css">

<div class="container">

<h2>Voter Registration</h2>

<?php
if($message!=""){
echo "<p class='msg'>$message</p>";
}
?>

<form method="POST">

<input type="text" name="name" placeholder="Full Name" required>

<input type="text" name="reg_no" placeholder="Registration Number" required>

<select name="gender">
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>

<input type="email" name="email" placeholder="Email">

<input type="password" name="password" placeholder="Password">

<button name="register">Register</button>

</form>

</div>