var  intervalTimerminutes = "0"
function startTimer(duration, display) {
  if (display === null) {
    return;
  }
  var timer = duration, minutes, seconds;
  intervalTimerminutes = setInterval(function () {
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

var  intervalTimerseconds = "0"
function startTimerseconds(duration, display) {
  if (display === null) {
    return;
  }
  var timer = duration, minutes, seconds;
      intervalTimerseconds  = setInterval(function () {
      minutes = parseInt(timer / 60, 10)
      seconds = parseInt(timer % 60, 10);
      minutes = minutes < 10 ? "0" + minutes : minutes;
      seconds = seconds < 10 ? seconds : seconds;
      display.textContent = seconds;
      console.log("this is seconds " + seconds);
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
const redClass = (position) => {
  if (position) {
    position.classList.toggle("red");
  }
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
const title = document.getElementById('title');
const encours = document.getElementById('encours');
const gif2 = document.getElementById('gifspace2');
const card_question = document.getElementById("card-question");
const timecardq = document.getElementById('cardtimeq');
const msgseduced = document.getElementById('msgseduced');
const msgseducedcontent = document.getElementById('msgseducedcontent');
const gif3 = document.getElementById('gifspace3');
const card_rival = document.getElementById('card-rival');
const timecardr = document.getElementById('cardtimer');


window.onload = function () {
    var count = 2;
    startTimerseconds(count, time_big);
};

setTimeout(function(){

  toggleClass(countdownText);
    toggleClass(message_big);
},3000);

setTimeout(function(){
  toggleClass(typebox);
      toggleClass(gif);
  toggleClass(message_big);
toggleClass(title);
  previousClass(container);
    toggleClass(card_seduced);
          clearInterval(intervalTimerseconds);
    var card_count = 9;
    startTimerseconds(card_count, timecard);
},4000);

setTimeout(function(){
toggleClass(card_seduced);
 toggleClass(time_small);
    clearInterval(intervalTimerseconds);
    var one_round = 79;
      startTimer(one_round, time_small);

},14000);



setTimeout(function(){

  toggleClass(msgseduced);
  // if (message_admin) {
  //   message_admin.innerHTML = "Lancez votre dernière joute";
  // }
},22000);


setTimeout(function(){
  toggleClass(message_admin);
  redClass(time_small);
},74000);


setTimeout(function(){
    toggleClass(message_admin);
      toggleClass(msgseduced);
      redClass(time_small);
    previousClass(container);
    toggleClass(typebox);
     toggleClass(time_small);
 toggleClass(title);
  toggleClass(countdownText);
   time_big.innerHTML ="3";
     toggleClass(gif2);
    encours.innerHTML = "round 2";
        clearInterval(intervalTimerseconds);
        var count = 2;
    startTimerseconds(count, time_big);
},94000);
//84


setTimeout(function(){
      toggleClass(countdownText);
  toggleClass(message_big);
},97000);
//87

setTimeout(function(){
  toggleClass(typebox);
  toggleClass(message_big);

  title.innerHTML = "Seconde manche. Répondez à votre courtisée."
toggleClass(title);
  toggleClass(gif2);
  previousClass(container);
        clearInterval(intervalTimerseconds);
    var card_count = 9;
    startTimerseconds(card_count, timecardq);
    toggleClass(card_question);
// };

},98000);
//88
//22


      setTimeout(function(){


toggleClass(card_question);
 toggleClass(time_small);
    time_small.innerHTML ="01:20";
    clearInterval(intervalTimerminutes);
    var one_round = 79;
      startTimer(one_round, time_small);
},108000);

setTimeout(function(){
  msgseducedcontent.innerHTML= "J'espère que la question vous inspire..."
  toggleClass(msgseduced);
},122000);


setTimeout(function(){
    toggleClass(message_admin);
  redClass(time_small);
},167000);

setTimeout(function(){
    toggleClass(message_admin);
      toggleClass(msgseduced);
      redClass(time_small);
    previousClass(container);
    toggleClass(typebox);
     toggleClass(time_small);
 toggleClass(title);
  toggleClass(countdownText);
   time_big.innerHTML ="3";
     toggleClass(gif3);
    encours.innerHTML = "round 3";
        clearInterval(intervalTimerseconds);
        var count = 2;
    startTimerseconds(count, time_big);
},187000);
//187

setTimeout(function(){
      toggleClass(countdownText);
  toggleClass(message_big);
},190000);
//190

setTimeout(function(){
  toggleClass(typebox);
  toggleClass(message_big);

  title.innerHTML = "Troisième manche. Provoquez votre rival."
toggleClass(title);
  toggleClass(gif3);
  previousClass(container);
        clearInterval(intervalTimerseconds);
    var card_count = 9;
    startTimerseconds(card_count, timecardr);
    toggleClass(card_question);
    toggleClass(card_rival);
},191000);
//191

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
