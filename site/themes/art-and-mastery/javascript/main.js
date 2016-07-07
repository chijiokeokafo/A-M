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

  $("#catalog-link").mouseover(function(){
  	$("#menu-two").addClass("animateIn");
  });
  $("body").click(function(){
  	$("#menu-two").addClass("animateOut");
  }, function(){
  	$("#menu-two").removeClass("animateIn");
  });
});




(function() {
  var carousel = $('.owl-carousel'),
      carouselNavable = $('.owl-carousel-navable'),
      carouselNav = $('.carousel-nav');

  // Default Owl Carousel Init
  carousel.owlCarousel({
    singleItem: true,
    slideSpeed: 500,
    pagination: false
  });

  // Paginated Owl Carousel Init
  function createNavableCarousel() {
    carouselNavable.addClass('live').owlCarousel({
      singleItem: true,
      slideSpeed: 500,
      pagination: true,
      navigation: true,
      navigationText: [translations.PREVSLIDE, translations.NEXTSLIDE],
      rewindNav: false,
      afterInit: function(e) {
        this.owlControls.prependTo(e);
        carouselNavable.find('.owl-page, .owl-buttons div').prop('tabindex', 0).addClass('keyboardable');
        carouselNavable.find('.details a, .details input, .details button').prop('tabindex', -1);
        carouselNavable.find('.item-wrapper').eq(this.currentItem).addClass('active');

        carouselNavable.find('.owl-page').each(function(index) {
          var slideTitle = $('.owl-item').eq(index).find('.details :first-child');
          $(this).attr('aria-label', slideTitle[0].innerText);
        });

        carouselNavable.find('.owl-buttons div').each(function(index) {
          var self = $(this),
              arrowText = self.text();
          self.attr('aria-label', arrowText);
        });

        if (this.currentItem === 0) {
          carouselNavable.addClass('start');
          carouselNavable.find('.owl-prev').prop('tabindex', -1);
        }
      },
      afterMove: function() {
        var currentSlide = carouselNavable.find('.item-wrapper').eq(this.currentItem);

        carouselNavable.removeClass('start end');
        carouselNavable.find('.owl-buttons div').prop('tabindex', 0);
        carouselNavable.find('.item-wrapper').removeClass('active');
        carouselNavable.find('.details a, .details input, .details button').prop('tabindex', -1);
        carouselNavable.find('.video-bg').each(function() {
          this.pause();
        });

        if (this.currentItem === 0) {
          carouselNavable.addClass('start');
          carouselNavable.find('.owl-prev').prop('tabindex', -1);
        } else if (this.currentItem === this.maximumItem) {
          carouselNavable.addClass('end');
          carouselNavable.find('.owl-next').prop('tabindex', -1);
        }

        currentSlide.addClass('active');
        currentSlide.find('.details a, .details input, .details button').prop('tabindex', 0);
        if (currentSlide.find('.video-bg').length) currentSlide.find('.video-bg').get(0).play();
      }
    });
  }

  // if (winWidth > 740) createNavableCarousel();

  // Destroy On Window Resize
  afterWinEvent('resize', function() {
    if (winWidth <= 740 && carouselNavable.data('owlCarousel')) {
      carouselNavable.data('owlCarousel').destroy();
      carouselNavable.removeClass('live');
    } else if (winWidth > 740) {
      createNavableCarousel();
    }
  });

  // Carousel Nav
  carouselNav.on('click', 'li', function() {
    var self = $(this);
    self.parent().prev().trigger('owl.goTo', self.index());
  });
})();
