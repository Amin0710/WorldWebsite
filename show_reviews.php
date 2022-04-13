<?php 
    $page_title = "Reviews and Complains";
    include("header.inc");
	include("nav2.inc");
?>

    <div id="main-content">
<h1>Reviews and Complains</h1>
<table>
<tr>
<th>Review ID</th>
<th>Customer Name</th>
<th>Customer Number</th>
<th>Main Issue</th>
</tr>

<?php
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "select review.review_id, review.cname, review.cnum, review.issue from review order by review.review_id ASC";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
    
 
	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<tr>";
		print "<td><a href='show_review.php?id={$row['review_id']}'>{$row['review_id']}</a></td>";
		print "<td>{$row['cname']}</td>";
		print "<td>{$row['cnum']}</td>";
		print "<td>{$row['issue']}</td>";
	}
    
 
?>
</table>
</div>

<?php 
    include("footer2.inc");
?>