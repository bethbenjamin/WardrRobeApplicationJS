
//hide function
function hide() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}



//welcome function
function Greeting() {
    var x = document.getElementById("jumbomain");
    var userResponse = prompt('Hello,I am your Wardrobe Application. What should I call you?');
    x.getElementsByTagName('h1')[0].innerText = userResponse + ' - Welcome to your Wardrobe';
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


// redirecting function
function Redirect() {
    window.open("https://www.tbdress.com/Cheap-Mens-Outerwears-105416/")
}
//function Redirect() {
//    window.location = "http://www.tbdress.com", '_blank';

//}
