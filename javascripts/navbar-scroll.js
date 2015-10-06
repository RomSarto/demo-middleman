$(document).ready(function() {
  // navbar transition jQuery script
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 50) {
      $(".js-navbar").css({
        "margin-top": "-70px"
      });
    }
    else {
      $(".js-navbar").css({
        "margin-top": "0px"
      });
    }
  });
});
