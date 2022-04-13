<?php 
    $page_title = "Nations";
    include("header.inc");
	include("nav.inc");
?>

    <div id="main-content">
<h1>Nations</h1>
<table>
<tr>
<th>Name</th>
<th>Official Name</th>
<th>Capital</th>
<th>Population</th>
<th>Area(km2)</th>
<th>Region</th>
</tr>

<?php
	$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
	$query = "select nation.nation_id, nation.common_name, nation.official_name, nation.capital, nation.population, nation.area, region.name from nation join region on nation.region=region.region_id order by nation.common_name ASC";
	$resultset = mysqli_query($db, $query) or die(mysqli_error($db));
    
 
	while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
	{
		print "<tr>";
		print "<td><a href='show_nation.php?id={$row['nation_id']}'>{$row['common_name']}</a></td>";
		print "<td>{$row['official_name']}</td>";
		print "<td>{$row['capital']}</td>";
		print "<td>";
		print number_format($row['population']);
		print "</td>";
		print "<td>";
		print number_format($row['area']);
		print "</td>";
		print "<td>{$row['name']}</td>";
		print "</tr>";
	}
    
 
?>
</table>
</div>

<?php 
    include("footer2.inc");
?>