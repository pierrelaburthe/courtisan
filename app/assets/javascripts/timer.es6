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
const flashClass = (position) => {
  if (position) {
    position.classList.toggle("flash");
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
      seconds = seconds < 10 ? "0" + seconds : seconds;
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
const container = document.getElementById("container-messenger");

// setTimeout(function(){
// message_big.innerHTML = "Le duel commence!";
// },3000);

const typebox= document.getElementById("typebox");


// setTimeout(function(){
// // message_big.innerHTML += "Joutez!"
// // flashClass(container);
// },3800);



setTimeout(function(){
  toggleClass(typebox);
  toggleClass(time_big);
  toggleClass(time_small);
  flashClass(container);
  if (message_admin) {
    message_admin.innerHTML = "Commencez à jouter";
  }
},4000);

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
