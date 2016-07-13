$(document).ready(function() {
  $("#carousel").owlCarousel({
    navigation : false,
    slideSpeed : 500,
 		paginationSpeed : 800,
  	rewindSpeed : 1000,
    singleItem: true,
		autoPlay : true,
  	stopOnHover : true,
  });
    $("#gallery").owlCarousel({
      navigation : false,
      slideSpeed : 500,
      paginationSpeed : 800,
      rewindSpeed : 1000,
      singleItem: true,
      autoPlay : true,
      stopOnHover : true,
    });

  $("#catalog-link").mouseover(function(){
  	$("#menu-two").addClass("animateIn");
  });
  $("body").click(function(){
  	$("#menu-two").addClass("animateOut");
  }, function(){
  	$("#menu-two").removeClass("animateIn");
  });
});

$(document).ready(function() {
  $('.menu-trigger').click(function() {
    $('ul.nav').slideToggle(250);
  });//end slide toggle
  
  $(window).resize(function() {   
    if (  $(window).width() > 500 ) {     
      $('ul.nav').removeAttr('style');
     }
  });
  $('#nav-icon').click(function(){
      $(this).toggleClass('open');
    });
});//end ready



//////////////////////
// Product Carousel //
//////////////////////

(function() {
  var carousel = $('.gallery-carousel'),
      carouselNav = $('.carousel-nav');

  // Default Owl Carousel Init
  carousel.owlCarousel({
    singleItem: true,
    slideSpeed: 500,
    pagination: false
  });

  // Carousel Nav
  carouselNav.on('click', 'li', function() {
    var self = $(this);
    self.parent().prev().trigger('owl.goTo', self.index());
  });
})();
