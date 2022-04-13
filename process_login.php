<?php 
    //extract the variables
    if(isset($_POST['username'])) $username = $_POST['username'];
	if(isset($_POST['password'])) $password = $_POST['password'];
	
    //connect to db server
    $db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
    $q = "select * from user where username = '$username' and password = SHA('$password')";
    $results = mysqli_query($db, $q) or die(mysqli_error($db));
    
    if(mysqli_num_rows($results) > 0)
    {
        session_start();
        $_SESSION['username'] =$username;
        header("Location:add_nation.php");
        exit(0);
	}
	else
    {
        header("Location:login_unsuccessful.php");
        exit(0);
    }
?>