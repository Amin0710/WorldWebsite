<?php 
    $page_title = "Log in";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
        <h2>Log in</h2>
		<p>Note: you can only add Nations if you are a Admin</p>
        </form>
        <form method="post" action="process_login.php">
		<table>
		<tr>
            <td>Username:</td>
			<td><input type="text" name = "username" /></td>
		</tr>
		<tr>
            <td>Password:</td>
			<td><input type="password" name="password" /></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
            <td><input type="submit" value="Log in" /></td>
		</tr>
		</table>
        </form>
		<p>Hint:</p>
		<p>Username:  Admin </p>
		<p>Password:  2016 </p>
 
 </div>
    
<?php 
    include("footer.inc");
?>