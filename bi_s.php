<?php 
	$page_title = "Sundarban";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Sundarban</h1>
<p>The Sundarbans (Bengali: সুন্দরবন, Shundôrbôn) is a natural region comprising southern Bangladesh and a small part in Eastern India. It is the largest single block of tidal halophytic mangrove forest in the world. The Sundarbans covers approximately 10,000 square kilometres (3,900 sq mi) most of which is in Bangladesh with the remainder in India. The Sundarbans is a UNESCO World Heritage Site.Sundarbans South, East and West are three protected forests in Bangladesh. This region is densely covered by mangrove forests, and is the largest reserves for the Bengal tiger. The Sundarbans National Park is a National Park, Tiger Reserve, and a Biosphere Reserve located in the Sundarbans delta in the Indian state of West Bengal.</p>
<h4>
If you Want to see some pictures of Sundarban
<button onclick="myMove();myMove2();">Click Here</button> 
</h4>
<div id ="myContainer">
<div id ="myAnimation">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/bi_s1.jpg">
</div>
<div id ="myAnimation2">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/bi_s2.jpg">
</div>
</div>
<p>If you want to know more about Sundarban <a href="http://whc.unesco.org/en/list/798" target="_blank">Click Here</a></p>
<div id="gmap">
<p>Google Map of Sundarban</p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://www.autohuren.world/">auto huren</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:8,center:new google.maps.LatLng(22.2971311,89.56717660000004),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(22.2971311,89.56717660000004)});infowindow = new google.maps.InfoWindow({content:'<strong> Sundarban</strong><br> Sundarban 743439<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>
<?php 
    include("footer.inc");
?>