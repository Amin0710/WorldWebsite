<?php 
    $page_title = "Oceans and Seas";
    include("header.inc");
	include("nav.inc");
?>

    <div id="main-content">
<h1>Oceans and Seas</h1>
<table>
	<tr>
		<th>Name</th>
	</tr>

<?php
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "select * from ocean";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
    
 
	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<tr>";
		print "<td>{$row['ocean_name']}</td>";
		print "</tr>";
	}
    
 
?>

</table>

</div>

<?php 
    include("footer.inc");
?>