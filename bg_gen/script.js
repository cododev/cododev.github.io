<<<<<<< HEAD
var css = document.querySelector("h3");
var color1 = document.querySelector(".color1");
var color2 = document.querySelector(".color2");
var body = document.getElementById("grad");

function setGradient(){
    body.style.background = "linear-gradient(to right, " + color1.value + ", " + color2.value + ")";
    css.textContent = body.style.background + ";";
}

color1.addEventListener("input", setGradient);
=======
var css = document.querySelector("h3");
var color1 = document.querySelector(".color1");
var color2 = document.querySelector(".color2");
var body = document.getElementById("grad");

function setGradient(){
    body.style.background = "linear-gradient(to right, " + color1.value + ", " + color2.value + ")";
    css.textContent = body.style.background + ";";
}

color1.addEventListener("input", setGradient);
>>>>>>> b90f00f54dc1de5822aba45a7515985c0baaa24f
color2.addEventListener("input", setGradient);