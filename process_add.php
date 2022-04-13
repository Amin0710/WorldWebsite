<!DOCTYPE html>
<html>
<head>
	<title>Nation Added</title>
	<meta charset="utf-8">
</head>
<body>

<?php
	if(isset($_POST['cname'])) $common_name = $_POST['cname'];
    if(isset($_POST['oname'])) $official_name = $_POST['oname'];
    if(isset($_POST['fname'])) $flag_file = $_POST['fname'];
	if(isset($_POST['capital'])) $capital = $_POST['capital'];
    if(isset($_POST['government'])) $government = $_POST['government'];
    if(isset($_POST['population'])) $population = $_POST['population'];
    if(isset($_POST['area'])) $area = $_POST['area'];
    if(isset($_POST['region'])) $region = $_POST['region'];
    if(isset($_POST['description'])) $description = $_POST['description'];
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "insert into nation values(null, '$common_name', '$official_name', null, '$capital', '$government', $population, $area, $region, '$description')";
	mysqli_query($db, $query) or die(mysqli_error($db));
	header("Location:show_nations2.php");
?>


</body>
</html>