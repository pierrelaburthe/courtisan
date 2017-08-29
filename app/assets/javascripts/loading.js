i = 0;
setInterval(function() {
  i = ++i % 4;
  $(".loading").text("" + Array(i+1).join("."));
}, 400);

