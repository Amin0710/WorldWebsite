<?php 
    $page_title = "Sunshine coast";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Sunshine coast</h1>
<p>Sunshine Coast is a metropolitan area and the third most populated area in the Australian state of Queensland. Located 100 km north of the state capital Brisbane in South East Queensland on the Pacific Ocean coastline, its urban area spans approximately 60 km of coastline and hinterland from Pelican Waters to Tewantin. The estimated urban population of Sunshine Coast as at June 2014 was 297,380.,[1] making it the 9th most populous in the country.</p>

<h4>
If you Want to see some pictures of Wilsons Promontory National Park
<button onclick="myMove();myMove2();">Click Here</button> 
</h4>
<div id ="myContainer">
<div id ="myAnimation">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/ai_sc1.jpg">
</div>
<div id ="myAnimation2">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/ai_sc2.jpg">
</div>
</div>
<p>If you want to know more about Wilsons Promontory National Park <a href="http://www.visitsunshinecoast.com/" target="_blank">Click Here</a></p>
<div id="gmap">
<p>Google Map of Wilsons Promontory National Park</p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://www.proxysitereviews.com/instantproxies">instantproxies</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:10,center:new google.maps.LatLng(-26.6559759,153.0918365),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(-26.6559759,153.0918365)});infowindow = new google.maps.InfoWindow({content:'<strong>Sunshine Coast</strong><br>Sunshine Coast<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>


<?php 
    include("footer.inc");
?>