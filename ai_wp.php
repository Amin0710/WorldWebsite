<?php 
    $page_title = "Wilsons Promontory National Park";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Wilsons Promontory National Park</h1>
<p>Wilsons Promontory is a peninsula that forms the southernmost part of the Australian mainland and is located at 39°02′S 146°23′E in the state of Victoria. It is known to the indigenous Gunai/Kurnai and the Boonerwrung Clans as Yiruk and Wammum respectively.South Point at 39°08′06″S 146°22′32″E is the southernmost tip of Wilsons Promontory and hence of mainland Australia. Located at nearby South East Point, (39°07′S 146°25′E) is the Wilsons Promontory Lighthouse. Most of the peninsula is protected by the Wilsons Promontory National Park and the Wilsons Promontory Marine National Park.</p>

<h4>
If you Want to see some pictures of Wilsons Promontory National Park
<button onclick="myMove();myMove2();">Click Here</button> 
</h4>
<div id ="myContainer">
<div id ="myAnimation">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/ai_wp1.jpg">
</div>
<div id ="myAnimation2">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/ai_wp2.jpg">
</div>
</div>
<p>If you want to know more about Wilsons Promontory National Park <a href="http://parkweb.vic.gov.au/explore/parks/wilsons-promontory-national-park" target="_blank">Click Here</a></p>
<div id="gmap">
<p>Google Map of Wilsons Promontory National Park</p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:300px;width:500px;'><div id='gmap_canvas' style='height:300px;width:500px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://freedirectorysubmissionsites.com/">directory submission sites</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:11,center:new google.maps.LatLng(-38.9166667,146.33333330000005),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(-38.9166667,146.33333330000005)});infowindow = new google.maps.InfoWindow({content:'<strong>Wilsons Promontory National Park</strong><br>Wilsons Promontory National Park<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>

<?php 
    include("footer.inc");
?>