function doMenu()
		{
			var menu = document.getElementById("find-nations");
			var url = menu.options[menu.selectedIndex].value;
			location.href=url;
		}

function myMove() {
  var elem = document.getElementById("myAnimation");   
  var pos = 450;
  var id = setInterval(frame, 10);
  function frame() {
    if (pos == 0) {
      clearInterval(id);
	  elem.style.opacity = 1;
    } else {
      pos--;
      elem.style.top = pos + 'px'; 
      elem.style.left = pos + 'px';
	  elem.style.opacity = 0.5;
    }
  }
}
function myMove2() {
  var elem = document.getElementById("myAnimation2");   
  var pos = 450;
  var id = setInterval(frame, 10);
  function frame() {
    if (pos == 0) {
      clearInterval(id);
	  elem.style.opacity = 1;
    } else {
      pos--;
      elem.style.top = pos + 'px'; 
      elem.style.left = 400 + 'px';
	  elem.style.opacity = 0.5;
    }
  }
}
function myTimer() {
    var d = new Date();
    document.getElementById("clock").innerHTML = d.toLocaleTimeString();
}
function popUp() {
alert("Only ADMIN Can Add Information")}


function bigImg(x) {
    x.style.height = "300px";
    x.style.width = "400px";
}

function normalImg(x) {
    x.style.height = "250px";
    x.style.width = "350px";
}
function bigImg3(x) {
    x.style.opacity = 1;
}

function normalImg3(x) {
   x.style.opacity = 0.5;
}
function bigImg1(x) {
    x.style.height = "400px";
    x.style.width = "400px";
}

function normalImg1(x) {
    x.style.height = "300px";
    x.style.width = "300px";
}

function fadeImg(x) {
    x.style.opacity = 1;
}
function fadeImg2(x) {
    x.style.opacity = 0.5;
}