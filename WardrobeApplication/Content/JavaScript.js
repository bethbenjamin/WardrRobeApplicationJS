
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
    var txt;
    var r = confirm("You are now being redirected to a shopping site.")
    if (r == true) {
        window.open("https://www.tbdress.com/Cheap-Mens-Outerwears-105416/");
    } else {
        txt = "You pressed Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
    
    
}
//changes text in footer
function changeText(text) {
    var display = document.getElementById('text-display');
    display.innerHTML = "";
    display.innerHTML = text;
}
function changeback(text) {
    var display = document.getElementById('text-display');
    display.innerHTML = "";
    display.innerHTML = text;
}


function changetext() {
    var textchange2 = "Created by Elizabeth Roadman-Benjamin";
    var id = document.getElementById("DP");
    id.innerHTML = textchange2;
}


//oncanplay code
function myFunction() {
    alert("Please start playing audio");
}
document.getElementById("myVideo").addEventListener("canplay", myFunction);
//oncanplay end

//onend code starts
function myFunctionEnd1() {
    alert("The audio has ended, please move along.");
}
//onend ends


//var myArray = [];

//@foreach(var d in Model.data)
//{
//    @: myArray.push("@d");
//}

//alert(myArray);
