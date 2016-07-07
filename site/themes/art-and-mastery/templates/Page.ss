<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Art & Mastery</title>
    <% base_tag %>
    <link rel="icon" type="image/png" href="$ThemeDir/favicon.png" />
    <link rel="stylesheet" href="$ThemeDir/css/main.css">
    <link href='https://fonts.googleapis.com/css?family=Amiri:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.css">
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.theme.css">
  </head>
  <body>
    <div class="container">
      <section class="header">
       <a href="$AbsoluteBaseURL"><img src="$ThemeDir/images/logo.png" alt="logo"></a> 
        <div class="headline">
          <p>Some sort of catchy tagline goes here</p>
        </div>
        <div class="main-menu">
          <ul class="nav">
            <% loop $Menu(1) %>
              <li>
              <% if $Children %>
                <a class="$LinkingMode" id="catalog-link" href="$Link">$MenuTitle</a>
              <% else %>  
                <a class="$LinkingMode" href="$Link">$MenuTitle</a>
              <% end_if %>
              </li>
            <% end_loop %>
          </ul>
        </div> 
      </section>

      <div class="catalog-menu" id="menu-two">
        <ul class="nav">
          <% loop $ChildrenOf(Catalog) %>
          <li>
            <strong><a class="$LinkingMode" href="$Link">$MenuTitle</a></strong>
          </li>
          <% end_loop %>
        </ul>
      </div>
      <%-- CONTENT --%>
      $Layout
      <div class="clear"></div>
      <% include Footer %>
    </div>
    <script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.js"></script>
    <script src="$ThemeDir/javascript/main.js"></script>
  </body>
</html>