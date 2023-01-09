import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    $("#preloader").animate({
      'opacity': '0'
    }, 600, function() {
      setTimeout(function() {
        $("#preloader").css("visibility", "hidden").fadeOut();
      }, 300);
    });

    $(window).scroll(function() {
      var scroll = $(window).scrollTop();
      var box = $('.header-text').height();
      var header = $('header').height();

      if (scroll >= box - header) {
        $("header").addClass("background-header");
      } else {
        $("header").removeClass("background-header");
      }
    });

    if ($('.owl-banner').length) {
      $('.owl-banner').owlCarousel({
        loop: true,
        nav: true,
        dots: true,
        items: 4,
        margin: 10,
        autoplay: true,
        smartSpeed: 700,
        autoplayTimeout: 4000,
        responsive: {
          0: {
            items: 1,
            margin: 0
          },
          460: {
            items: 1,
            margin: 0
          },
          576: {
            items: 1,
            margin: 10
          },
          992: {
            items: 4,
            margin: 10
          }
        }
      });
    }
  }
}
