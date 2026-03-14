



<?php
include("config.php");

$result = mysqli_query($con,"
SELECT candidates.name, COUNT(votes.candidate_id) AS total_votes
FROM candidates
LEFT JOIN votes ON candidates.candidate_id = votes.candidate_id
GROUP BY candidates.candidate_id
ORDER BY total_votes DESC
");

?>

<link rel="stylesheet" href="css/results.css">

<div class="container">
<h1>🏆 Election Results</h1>

<table>

<tr>
<th>Candidate</th>
<th>Total Votes</th>
</tr>

<?php
while($row=mysqli_fetch_assoc($result)){
?>

<tr>
<td><?php echo $row['name']; ?></td>
<td><?php echo $row['total_votes']; ?></td>
</tr>

<?php
}
?>

</table>

</div>