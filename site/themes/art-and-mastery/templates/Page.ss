<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Art & Mastery</title>
    <% base_tag %>
		<link rel="stylesheet" href="$ThemeDir/css/main.css">
		<link href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.css">
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.theme.css">
	</head>
	<body>
		<div class="container">
			<section class="header">
				<img src="$ThemeDir/images/logo.png" alt="">
				<ul class="nav">
					<% loop $Menu(1) %>
            <li>
              <a class="$LinkingMode" href="$Link">$MenuTitle</a>
            </li>
          <% end_loop %> 
				</ul>
        <div class="headline">
          <p>Some sort of catchy tagline goes right here</p>
        </div>
			</section>
      <%-- CONTENT --%>
      <div class="content">
        $Layout
      </div>
			<div class="clear"></div>
			<section class="footer">
				<img src="$ThemeDir/images/footer-logo.png" alt="">
				<hr>
				<div class="footer-nav">
					<p>&reg;2016 Art & Mastery&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">Catalog</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">Media</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">Contact</a></p>
				</div>
			</section>
		</div>
		
		<script src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.js"></script>
		<script src="$ThemeDir/javascript/main.js"></script>
	</body>
</html>