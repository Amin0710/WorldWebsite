<?php 
    $page_title = "Add Nation";
    include("header.inc");
	include("nav2.inc");
?>

 <div id="main-content">
	<title>Add Nation</title>
</head>
<body>
	<h1>Add Nation</h1>
	<form  method="post" action="process_add.php" target="_blank" autocomplete="off" >
		<table>
			<tr>
				<td>Common Name</td><td><input type="text" name="cname" size="50"></td>
			</tr>
			<tr>
				<td>Official Name</td><td><input type="text" name="oname" size="50"></td>
			</tr>
			<tr>
			<tr>
				<td>Name of the Flag File(with .jpg)</td><td><input type="text" name="fname" size="25"></td>
			</tr>
			<tr>
				<td>Capital</td><td><input type="text" name="capital" size="50"></td>
			</tr>
			<tr>
				<td>Government</td><td><input type="text" name="government" size="50"></td>
			</tr>
			<tr>
				<td>Population</td><td><input type="text" name="population" size="50"></td>
			</tr>
			<tr>
				<td>Area</td><td><input type="text" name="area" size="50"></td>
			</tr>
			<tr>
				<td>Region</td>
                <td>
                    <select name="region">
                        <?php
                            $db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
                            $query = "select * from region";
                            $resultset = mysqli_query($db, $query) or die(mysqli_error($db));
                            while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
                            {
                                print "<option value='{$row['region_id']}'>{$row['name']}</option>\n";
                             }
                        ?>
                    </select>
                </td>
			</tr>
		</table>
		Description<br>
		<textarea name="description" rows="20" cols="100"></textarea><br>
		<input type="submit" value="Add Nation">
	</form>
</div>

<?php 
    include("footer2.inc");
?>