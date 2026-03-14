<?php
session_start();
include("config.php");

if(!isset($_SESSION['voter_id'])){
    header("Location: login.php");
    exit();
}

$candidates = mysqli_query($con,"SELECT * FROM candidates");
?>

<h2>Select Candidate</h2>

<form method="POST" action="process_vote.php">

<?php
while($row = mysqli_fetch_assoc($candidates)){
?>

<input type="radio" name="candidate" value="<?php echo $row['candidate_id']; ?>" required>
<?php echo $row['name']; ?>
<br>

<?php
}
?>

<br>
<button type="submit">Vote</button>

</form>