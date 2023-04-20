var p = 0;
var max = 7;

function slide02() {
  // next 1
  $(".right-button1").click(function() {
    if (p < max) {
      p++;
    } else {
      $(".posterzip1").css({left: 0});
      p = 1;
    }
    $(".posterzip1").stop().animate({left: -164 * p}, 100);
  });

  $(".left-button1").click(function() {
    if (p === 0) {
      $(".posterzip1").css({left: -164 * max});
      p = max-1;
    } else {
      p--;
    }
    $(".posterzip1").stop().animate({left: -164 * p}, 100);
  });

  // next 2
  $(".right-button2").click(function() {
    if (p < max) {
      p++;
    } else {
      $(".posterzip2").css({left: 0});
      p = 1;
    }
    $(".posterzip2").stop().animate({left: -164 * p}, 100);
  });

  $(".left-button2").click(function() {
    if (p === 0) {
      $(".posterzip2").css({left: -164 * max});
      p = max-1;
    } else {
      p--;
    }
    $(".posterzip2").stop().animate({left: -164 * p}, 100);
  });

  // next 3
  $(".right-button3").click(function() {
    if (p < max) {
      p++;
    } else {
      $(".posterzip3").css({left: 0});
      p = 1;
    }
    $(".posterzip3").stop().animate({left: -164 * p}, 100);
  });

  $(".left-button3").click(function() {
    if (p === 0) {
      $(".posterzip3").css({left: -164 * max});
      p = max-1;
    } else {
      p--;
    }
    $(".posterzip3").stop().animate({left: -164 * p}, 100);
  });
}

$(document).ready(function() {
  slide02();
});
