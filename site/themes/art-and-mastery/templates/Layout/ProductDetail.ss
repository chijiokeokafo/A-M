<%-- <h1>$Name</h1>


<h1>    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto impedit possimus suscipit necessitatibus at itaque cupiditate facilis voluptas beatae magni, debitis nulla quis aspernatur veritatis accusamus dolorum perferendis nesciunt voluptatem.</h1>


<div class="product-carousel">
    <div class="owl-carousel">
      <% loop $ProductCarouselItems.sort('SortOrder').Limit(4) %>
        <div><img src="$ProductImage.URL" alt="" /></div>
      <% end_loop %>
    </div>
    <ul class="carousel-nav">
      <% loop $CarouselItems.Sort('SortOrder').Limit(4) %>
        <li class="keyboardable" tabindex="0"><img src="$Image.CroppedImage(150,100).URL" alt="$ImageAlt" /></li>
      <% end_loop %>
    </ul>
  </div> --%>

  <div class="product-name">
    <h1><em>$ProductName</em></h1>
    <hr>
    <p>$Description</p>
  </div>
  
  <div class="description">
    
  </div>
  <div class="gallery">
    <div class="product-carousel">
      <div class="owl-carousel">
        <% loop $ProductGalleryItems.Sort('SortOrder').Limit(4) %>
          <div><img src="$Image.CroppedImage(600,400).URL" alt="$AltText" /></div>
        <% end_loop %>
      </div><!-- end owl-carousel -->
      <ul class="carousel-nav">
        <% loop $ProductGalleryItems.Sort('SortOrder').Limit(4) %>
          <li class="keyboardable" tabindex="0"><img src="$Image.CroppedImage(150,100).URL" alt="$AltText" /></li>
        <% end_loop %>
      </ul><!-- end carousel-nav -->
    </div>
  </div>
    



