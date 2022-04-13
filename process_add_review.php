<!DOCTYPE html>
<html>
<head>
	<title>Review Added</title>
	<meta charset="utf-8">
</head>
<body>

<?php
	if(isset($_POST['cname'])) $cname = $_POST['cname'];
    if(isset($_POST['cnum'])) $cnum = $_POST['cnum'];
    if(isset($_POST['issue'])) $issue = $_POST['issue'];
    if(isset($_POST['description'])) $description = $_POST['description'];
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "insert into review values(null, '$cname', '$cnum','$issue','$description')";
	mysqli_query($db, $query) or die(mysqli_error($db));
    $message = "Successfully Submitted the review";
    echo "<script type='text/javascript'>alert('$message');</script>";
?>
     


</body>
</html>