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
