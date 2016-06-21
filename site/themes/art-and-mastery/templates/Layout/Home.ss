<div class="carousel-container">
	<div id="carousel" class="owl-carousel owl-theme">
		<% loop $HomepageCarouselItems.sort('SortOrder') %>
      <%-- <div class="slide" aria-label="carousel item #$Pos">
        <a href="$Link" <% if ExternalLink %>target="_blank"<% end_if %>><img src="$DesktopImage.URL" alt="$Alt" class="desktop">
        </a>
      </div> --%>
      <div class="item">
        <img src="$DesktopImage.URL"/>
      </div>
    <% end_loop %>
	</div>
</div>

<%-- 
<section class="carousel">
  <div class="viewport">
    <div class="itemContainer">
      <% loop $HomepageCarouselItems.sort('SortOrder') %>
      <div class="slide" aria-label="carousel item #$Pos">
        <a href="$Link" <% if ExternalLink %>target="_blank"<% end_if %>><img src="$DesktopImage.URL" alt="$Alt" class="desktop">
        </a>
      </div>
      <div class="item">
        <img src="$DesktopImage.URL"/>
      </div>
      <% end_loop %>
    </div>
    <a href="#" class="leftArrow" aria-label="<% _t('Home.Carousel.LEFTARROW') %>"><img src="$ThemeDir/images/leftArrow.png" alt=""></a>
    <a href="#" class="rightArrow" aria-label="<% _t('Home.Carousel.RIGHTARROW') %>"><img src="$ThemeDir/images/rightArrow.png" alt=""></a>
    
  </div>
  <div class="indicators">
    <div class="icon-container">
      <% loop $HomepageCarouselItems %>
      <a href="#" class="indicator" aria-label="<% _t('Home.Carousel.INDICATOR') %>$Pos"></a>
      <% end_loop %>
  </div>
</section> --%>