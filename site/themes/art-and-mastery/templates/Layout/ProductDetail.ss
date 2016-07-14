<div class="product-detail">
  <div class="product-name">
    <h1><em>$ProductName</em></h1>
    <hr class="product-rule">
    $Description
    <hr class="product-rule">
    <% if $isFabric %>
      <h2>Suggested Fabrics:</h2>
      <ul class="fabrics">
        <li><a href="$FabricOne">Option A</a></li>
        <li><a href="$FabricTwo">Option B</a></li>
        <% if $FabricThree %>
          <li><a href="$FabricThree">Option C</a></li>
        <% end_if %>
      </ul>
    <% end_if %>
  </div>
  <div class="gallery">
    <div class="product-carousel">
      <div class="owl-carousel gallery-carousel">
        <% loop $ProductGalleryItems.Sort('SortOrder').Limit(3) %>
          <div class="main-img">
            <a href="$Image.URL" target="_blank"><img src="$Image.CroppedImage(600,400).URL" alt="$AltText" /></a>
          </div>
        <% end_loop %>
      </div><!-- end owl-carousel -->
      <ul class="carousel-nav">
        <% loop $ProductGalleryItems.Sort('SortOrder').Limit(4) %>
          <li class="keyboardable" tabindex="0"><img src="$Image.CroppedImage(175,125).URL" alt="$AltText" /></li>
        <% end_loop %>
      </ul><!-- end carousel-nav -->
    </div>
  </div>
</div>

    



