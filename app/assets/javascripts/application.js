//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        display.textContent = minutes + ":" + seconds;
        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
};

const toggleClass = position => position.classList.toggle("hide");
const previousClass = position => position.classList.toggle("previous-color");


function startTimerseconds(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ?  seconds : seconds;
        display.textContent = seconds;
        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
};

const message_big = document.getElementById("bigmsg");
const time_big = document.getElementById("bigtime");
const time_small = document.getElementById("smalltime");
const message_admin= document.getElementById("msgadmin");
const container = document.getElementById("container-messages");
const countdown_text = document.getElementById("countdown-text");
const gifspace = document.getElementById("gifspace");

// setTimeout(function(){
// message_big.innerHTML = "Le duel commence!";
// },3000);

const typebox= document.getElementById("typebox");


setTimeout(function(){
toggleClass(message_big);
toggleClass(time_big);
toggleClass(countdown_text);
toggleClass(gifspace);
},3000);




setTimeout(function(){
toggleClass(typebox);
toggleClass(time_small);
toggleClass(message_big);
previousClass(container);
message_admin.innerHTML = "Commencez à jouter";

},3500);

window.onload = function () {
    var count = 2;
    var one_round = 93;
    startTimerseconds(count, time_big);
    startTimer(one_round, time_small);
};

// window.onload = function () {
//     var one_round = 90;
//     startTimer(one_round, time_small);
// };



// setTimeout(function(){
// message_admin.innerHTML = "shalom";

// },5000);
