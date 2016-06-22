<div class="carousel-container">
	<div id="carousel" class="owl-carousel owl-theme">
		<% loop $HomepageCarouselItems.sort('SortOrder') %>
      <div class="item">
        <img src="$DesktopImage.URL"/>
      </div>
    <% end_loop %>
	</div>
</div>