<div class="catalog-page">
  <% loop $Children %>
  <div class="tile">
    <a class="$LinkingMode" href="$Link">
      <h1>$ProductName</h1>
      <div class="product-image">
        <img src="$ProductTileImage.URL" alt="">
      </div>
    </a>
  </div>
    
  <% end_loop %>
</div>


