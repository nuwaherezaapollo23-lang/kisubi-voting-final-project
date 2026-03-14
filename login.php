<?php
session_start();
include("config.php");

if(isset($_POST['login'])){

    $reg = $_POST['reg_no'];
    $pass = $_POST['password'];

    $sql = "SELECT * FROM voters WHERE reg_no='$reg' AND password='$pass'";
    $result = mysqli_query($con,$sql);

    if(mysqli_num_rows($result) == 1){

        $row = mysqli_fetch_assoc($result);

        // store voter id in session
        $_SESSION['voter_id'] = $row['voter_id'];

        // success message
        $_SESSION['success'] = "Login successful. Welcome!";

        // redirect to candidate selection page
        header("Location: vote.php");
        exit();

    }else{

        $error = "Invalid Registration Number or Password";

    }
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Voter Login</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>
    

<div class="container">

<h2>Voter Login</h2>

<?php
if(isset($error)){
    echo "<p style='color:red;'>$error</p>";
}
?>

<form method="POST" action="login.php">

<input type="text" name="reg_no" placeholder="Registration Number" required>

<input type="password" name="password" placeholder="Password" required>

<button type="submit" name="login">Login</button>

</form>

</div>

</body>
</html>