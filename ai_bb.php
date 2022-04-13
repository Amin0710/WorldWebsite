<?php 
	$page_title = "Bondi Beach";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Bondi Beach</h1>
<p>There is some contention as to the origin of the word Bondi. One source suggests that "Bondi" or "Boondi" is an Aboriginal word meaning water breaking over rocks or noise of water breaking over rocks. While the Australian Museum records that Bondi means place where a flight of nullas took place. Aboriginal people occupied many sites in the area now known as Waverley in the period before European settlement. There were numerous recorded sightings during the early colonial period and there are significant Aboriginal rock carvings, including rough carving of fish or fishes on the cliffs on Ben Buckler, the Bondi Golf Course and MacKenzies Point. Early resident, Thomas O'Brien recalled finding Aboriginal remains and stone tomahawks after sand had been removed from the bay frontage after a gale.Ethnologists from the Australian Museum in Sydney have also found evidence among the stone implements and flint tools (most of them discarded as "faulty" by their ancient makers) of countless generations' of aboriginal craftsmen using the beach area as a large-scale tool-making facility, using materials chipped and fractured from the volcanic trench and other rocks nearby.</p>

<h4>
If you Want to see some pictures of Bondi Beach
<button onclick="myMove();myMove2();">Click Here</button> 
</h4>
<div id ="myContainer">
<div id ="myAnimation">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/ai_bb1.jpg">
</div>
<div id ="myAnimation2">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0"src="images/my_images/ai_bb2.jpg">
</div>
</div>
<p>If you want to know more about Bondi Beach <a href="http://bondibeach.com/" target="_blank">Click Here</a></p>
<div id="gmap">
<p>Google Map of Bondi Beach</p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:300px;width:500px;'><div id='gmap_canvas' style='height:300px;width:500px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://buywebtrafficexperts.com">buy website traffic</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(-33.8908435,151.27429059999997),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(-33.8908435,151.27429059999997)});infowindow = new google.maps.InfoWindow({content:'<strong>Bondi Beach</strong><br>Bondi Beach<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>
</div>
<?php 
    include("footer.inc");
?>