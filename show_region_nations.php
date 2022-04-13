<?php 
    $page_title = "Regions";
    include("header.inc");
	include("nav.inc");
?>

    <div id="main-content"><?php
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
<h1>Nations</h1>

<table>
<tr>
<th>Name</th>
<th>Official Name</th>
<th>Capital</th>
<th>Population</th>
<th>Area</th>
<th>Region</th>
</tr>

<?php
	if(isset($_GET['region_id']))
	{
		$reg = $_GET['region_id'];

		$db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
		$query = "select nation.nation_id, nation.common_name, nation.official_name, nation.capital, nation.population, nation.area, region.name  from nation join region on nation.region=region.region_id where region.region_id = $reg";
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
    }
 
?>

</table>

</div>

<?php 
    include("footer.inc");
?>