<div class="catalog-page">
  <% loop $Children %>
    <% if $ProductName %>
      <div class="tile">
        <a class="$LinkingMode" href="$Link">
          <h1>$ProductName</h1>
          <div class="product-image">
            <img src="$ProductTileImage.URL" alt="">
          </div>
        </a>
      </div>
    <% else %>
      <div class="tile">
        <a class="$LinkingMode" href="$Link">
          <h1>$CategoryTitle</h1>
          <div class="catalog-image">
            <img src="$CategoryImage.URL" alt="">
          </div>
        </a>
      </div>  
    <% end_if %>  
  <% end_loop %>
</div>


