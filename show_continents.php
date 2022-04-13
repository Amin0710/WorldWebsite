<?php 
    $page_title = "Continents";
    include("header.inc");
	include("nav.inc");
?>

    <div id="main-content">
<h1>Continents</h1>
<table>
	<tr>
		<th>Name</th>
		<th>Percent Landmass</th>
		<th>Population Density</th>
	</tr>

<?php
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "select * from continent";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
    
 
	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<tr>";
		print "<td>{$row['continent_name']}</td>";
		print "<td>{$row['percent_landmass']}</td>";
		print "<td>{$row['population_density']}</td>";
		print "</tr>";
	}
    
 
?>

</table>

</div>

<?php 
    include("footer.inc");
?>