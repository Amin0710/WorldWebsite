<!DOCTYPE html>
<?php
	if(isset($_GET['id']))
	{
		$id = $_GET['id'];
		$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
		$query = "select review.review_id, review.cname, review.cnum, review.issue, review.description from review where review.review_id = $id";
		$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
		$row=mysqli_fetch_array($resultset, MYSQLI_ASSOC);
	}
?>
<?php 
    $page_title = "{$row['issue']}";
    include("header.inc");
	include("nav2.inc");
?>
 <div id="main-content">
 
<?php
		print "<h3>Customer Name:{$row['cname']}</h3>";
		print "<h3>Customer Number:{$row['cnum']}</h3>";
		print "<h1>Main Issue: {$row['issue']}</h1>";
		print "<p>{$row['description']}</p>";
?>


</div>

<?php 
    include("footer2.inc");
?>