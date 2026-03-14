<?php
session_start();
include("config.php");

$voter = $_SESSION['voter_id'];
$candidate = $_POST['candidate'];

// check if voter already voted
$check = mysqli_query($con,"SELECT * FROM votes WHERE voter_id='$voter'");

if(mysqli_num_rows($check) > 0){

echo "You have already voted!";

}else{

mysqli_query($con,"INSERT INTO votes (voter_id, candidate_id)
VALUES ('$voter','$candidate')");

echo "Vote submitted successfully!";
}
?>
