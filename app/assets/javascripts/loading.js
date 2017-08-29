i = 0;
setInterval(function() {
  i = ++i % 4;
  $(".loading").text("Nous recherchons un adversaire à votre hauteur " + Array(i+1).join("."));
}, 800);

