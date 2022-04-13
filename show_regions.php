<?php 
    $page_title = "Regions";
    include("header.inc");
	include("nav.inc");
?>

    <div id="main-content">
<?php
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
?>
<h2>Find nations</h2>
<form >
<select id="find-nations" onchange="doMenu();">
	<option value="">Select Region</option>
<?php
	$query = "select region_id, name from  region order by name ASC";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));

	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<option value='show_region_nations.php?region_id={$row['region_id']}'>{$row['name']}</option>\n";
	}
?>	
</select>
</form>
<h1>Regions</h1>
<p>These are the regions defined by the United Nations for statistics</p>
<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
</tr>

<?php

	$query = "select * from region order by region_id ASC";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));

	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<td>{$row['region_id']}</td>";
		print "<td>{$row['name']}</td>";
		print "<td>{$row['description']}</td>";
		print "</tr>";
	}
?>

</table>

</div>

<?php 
    include("footer.inc");
?>