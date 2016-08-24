<div class="catalog-page">
  <% loop $ChildrenOf(Catalogue) %>
    <div class="tile">
      <a class="$LinkingMode" href="$Link">
        <h1>$CategoryTitle</h1>
        <div class="catalog-image">
          <img src="$CategoryImage.URL" alt="">
        </div>
      </a>
    </div>
  <% end_loop %>
</div>