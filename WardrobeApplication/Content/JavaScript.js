
//welcome function
function Greeting() {
    var x = document.getElementById("jumbomain");
    var userResponse = prompt('Hello,I am your Wardrobe Application. What should I call you?');
    x.getElementsByTagName('h1')[0].innerText = userResponse +' - Welcome to your Wardrobe' ;
}


//changing color function on homepage
document.getElementById("home").onmouseover = function () { mouseOver() };
document.getElementById("home").onmouseout = function () { mouseOut() };

function mouseOver() {
    document.getElementById("home").style.color = "#cedef3";
}

function mouseOut() {
    document.getElementById("home").style.color = "white";
}