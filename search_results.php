<?php 
    $page_title = "Searched Nations";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Search Results</h1>


<?php
    if(isset($_POST['searchterm']))
    {
        $searchterm = $_POST['searchterm'];
        $db = mysqli_connect("localhost", "root", "", "world") or die(mysqli_error($db));
        $query = "select * from nation where official_name like '%$searchterm%' or description like '%$searchterm%'";
        $resultset = mysqli_query($db, $query) or die(mysqli_error($db));
    
 
        while($row=mysqli_fetch_array($resultset, MYSQLI_ASSOC))
        {
            print "<a href='show_nation.php?id={$row['nation_id']}'>{$row['common_name']}</a><br>";
        }
    
    }
    
 
?>

</div>

<?php 
    include("footer.inc");
?>