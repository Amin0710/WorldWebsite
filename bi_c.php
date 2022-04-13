<?php 
	$page_title = "Cox's Bazar Beach";
    include("header.inc");
	include("nav.inc");
?>

 <div id="main-content">
<h1>Cox's Bazar Beach</h1>
<p>Cox's Bazar Beach, located at Cox's Bazar, Bangladesh, is the longest unbroken sea beach in the world, running 125 kilometres (78 mi). It is the top tourist destination of Bangladesh.At high tide the beach is 200 metres (660 ft) wide and at low tide it is 400 metres (1,300 ft) wide on average. Quicksand is a danger during ebb tide.</p>
<h4>
If you Want to see some pictures of Cox's Bazar Beach
<button onclick="myMove();myMove2();">Click Here</button> 
</h4>
<div id ="myContainer">
<div id ="myAnimation">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/bi_c1.jpg">
</div>
<div id ="myAnimation2">
<img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="images/my_images/bi_c2.jpg">
</div>
</div>
<p>If you want to know more about Cox's Bazar Beach <a href="http://coxsbazar-bd.com/" target="_blank">Click Here</a></p>
<div id="gmap">
<p>Google Map of Cox's Bazar Beach</p>
<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:700px;'><div id='gmap_canvas' style='height:440px;width:700px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://www.proxysitereviews.com/instantproxies">instantproxies</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map(){var myOptions = {zoom:8,center:new google.maps.LatLng(22.3921622,91.8643525),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(22.3921622,91.8643525)});infowindow = new google.maps.InfoWindow({content:'<strong>Cox\'s Bazar Beach</strong><br>Cox\'s Bazar Beach<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>
<?php 
    include("footer.inc");
?>