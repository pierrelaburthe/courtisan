function startTimer(duration, display) {
  if (display === null) {
    return;
  }
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

const toggleClass = (position) => {
  if (position) {
    position.classList.toggle("hide");
  }
};
const previousClass = (position) => {
  if (position) {
    position.classList.toggle("previous-color");
  }
};


function startTimerseconds(duration, display) {
  if (display === null) {
    return;
  }
  var timer = duration, minutes, seconds;
  setInterval(function () {
      minutes = parseInt(timer / 60, 10)
      seconds = parseInt(timer % 60, 10);
      minutes = minutes < 10 ? "0" + minutes : minutes;
      seconds = seconds < 10 ? seconds : seconds;
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
const card_seduced = document.getElementById("card-seduced");
const typebox= document.getElementById("typebox");
const gif = document.getElementById('gifspace');
const countdownText = document.getElementById('countdown-text');
const timecard = document.getElementById('cardtime');



setTimeout(function(){
  toggleClass(countdownText);
    toggleClass(message_big);
},3000);


setTimeout(function(){
  toggleClass(typebox);
      toggleClass(message_big);

  toggleClass(gif);
  // toggleClass(countdownText);
  previousClass(container);
  if (message_admin) {
    message_admin.innerHTML = "La carte va bientôt disparaître...";
  }
},4000);


window.onload = function () {
    var count = 2;
    var one_round = 93;
    var card_count = 9;
    startTimerseconds(count, time_big);
    startTimer(one_round, time_small);
    startTimerseconds(card_count, timecard);
};


setTimeout(function(){
toggleClass(card_seduced);
 toggleClass(time_small);
  if (message_admin) {
    message_admin.innerHTML = "Provoquez votre adversaire";
  }


// },10000);


// window.onload = function () {
//     var one_round = 90;
//     startTimer(one_round, time_small);
// };



// setTimeout(function(){
// message_admin.innerHTML = "shalom";

// },5000);

// window.onload = function () {
//     var one_round = 90;
//     startTimer(one_round, time_small);
// };



// setTimeout(function(){
// message_admin.innerHTML = "shalom";

// },5000);
