<div class="products-page">
  <% loop $Children %>
  <div class="tile">
    <a class="$LinkingMode" href="$Link">
      <h1>$PageName</h1>
      <div class="product-image">
        <img src="$ProductImage1.URL" alt="">
      </div>
    </a>
  </div>
    
  <% end_loop %>
</div>
