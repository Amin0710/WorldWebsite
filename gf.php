<?php 
    $page_title = "Reviews";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
	<h1>Reviews</h1>
	<form  method="post" action="process_add_review.php" target="_blank" autocomplete="off" >
		<table>
			<tr>
				<td>Name</td><td><input type="text" name="cname" size="50"></td>
			</tr>
			<tr>
				<td>Mobile Number</td><td><input type="text" name="cnum" size="50"></td>
			</tr>
			<tr>
				<td>Main Issue</td><td><input type="text" name="issue" size="50"></td>
                </td>
			</tr>
		</table>
		Description <br>
		<textarea name="description" rows="20" cols="100"></textarea><br>
		<input type="submit" onclick="Submit_popup()" value="Submit review">
	</form>
</div>

<?php 
    include("footer2.inc");
?>