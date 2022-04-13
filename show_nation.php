<!DOCTYPE html>
<?php
	if(isset($_GET['id']))
	{
		$id = $_GET['id'];
		$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
		$query = "select nation.nation_id, nation.common_name, nation.official_name, nation.flag_file, nation.capital, nation.government, nation.population, nation.area, region.name, nation.description  from nation join region on nation.region=region.region_id where nation.nation_id = $id";
		$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
		$row=mysqli_fetch_array($resultset, MYSQLI_ASSOC);
	}
?>
<?php 
    $page_title = "{$row['common_name']}";
    include("header.inc");
	include("nav.inc");
?>
 <div id="main-content">
 
<div id="flag">
<?php
		print "<h1>{$row['common_name']}</h1>";
		print "<h2>{$row['official_name']}</h2>";
		print "<p><img src='flags/{$row['flag_file']}'></p>";
		print "<h3>Capital: {$row['capital']}</h3>";
		print "<p><strong>Government:</strong> {$row['government']}</p>";
		print "<p><strong>Population:</strong> ";
		print number_format($row['population']);
		print "</p>";
		print "<p><strong>Area:</strong> ";
		print number_format($row['area']);
		print "</p>";
		print "<p><strong>Region:</strong> {$row['name']}</p>";
		print "<p>{$row['description']}</p>";
?>


</div>
</div>

<?php 
    include("footer2.inc");
?>