
$(".radio_buttons.user_gender .radio").click(function() {
      if ($(this).is("active"))
        $(".radio_buttons.user_gender .radio").not(this).removeClass('active');
      else
        $(this).addClass('active');
      $(".radio_buttons.user_gender .radio").not(this).removeClass('active');
    });


$(".radio_buttons.user_status .radio").click(function() {
      if ($(this).is("active"))
        $(".radio_buttons.user_status .radio").not(this).removeClass('active');
      else
        $(this).addClass('active');
      $(".radio_buttons.user_status .radio").not(this).removeClass('active');
    });

