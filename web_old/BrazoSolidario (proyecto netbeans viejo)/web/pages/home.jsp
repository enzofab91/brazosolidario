<%-- 
    Document   : home
    Created on : Mar 23, 2016, 8:37:08 PM
    Author     : marccio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
                <%String UrlDelSitio = "brazosolidario.org";%>
		<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Brazo Solidario</title>
		
		<link rel="shortcut icon" href="<%=UrlDelSitio%>/images/favicon.ico" type="image/x-icon">
		<link rel="icon" href="<%=UrlDelSitio%>/images/favicon.ico" type="image/x-icon">
		
		<!-- styles -->
		<link href="<%=UrlDelSitio%>/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=UrlDelSitio%>/css/slider.css" rel="stylesheet">
		
		<!-- scripts -->
		<script type="text/javascript" src="<%=UrlDelSitio%>/js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="<%=UrlDelSitio%>/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=UrlDelSitio%>/js/jcarousellite_1.0.1c5.js"></script>
	</head>
	<body>
		<div id="contenedora" style="margin: 25px auto">
			<div id="cabezal" style="position:relative; top: 20px; left: 150px">
				<div class="cabezal-img" style="float:left">
					<a href="<%=UrlDelSitio%>/aindex.aspx">
						<img src="<%=UrlDelSitio%>/images/logo64.png"></img>
					</a>
				</div>
				<div class="btn-group cabezal-menu" role="group" style="position:relative; top: 20px; left: 200px">
					<button  onClick="window.location.href = 'aindex.aspx'" type="button" class="btn btn-default">Inicio</button>
					<button type="button" class="btn btn-default">Actividades</button>

					 <div class="btn-group" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  ¿Quiénes somos?
						  <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
						  <li><a href="#">Misión</a></li>
						  <li><a href="#">Visión</a></li>
						  <li><a href="#">Valores</a></li>
						</ul>
						<a href="/brazosolidario/contacto.html"><button type="button" class="btn btn-default">Contacto</button></a>
					</div>
				</div>
				<div style="position:relative; top:-40px; left:800px">
					<p style="font-size:20px; color:#91DC5A">¡Seguínos en nuestras redes!</p>
					<div style="position:relative; left:85px">
						<a href="http://www.facebook.com/brazosolidariouruguay" target="_blank"><img src="/img/social-fb.png"></img></a>&nbsp &nbsp
						<a href="http://www.instagram.com/brazosolidario" target="_blank"><img src="/img/social-ig.png"></img></a>&nbsp &nbsp
						<a href="http://www.twitter.com/brazosolidario" target="_blank"><img src="/img/social-tw.png"></img></a>
					</div>
				</div>
			</div>
			<!-- slider -->
			<div class="container" style="position:relative; top:15px; width:1100px;height:400px; margin: 0 auto">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner">
				  
					<div class="item active">
					  <img src="<%=UrlDelSitio%>/images/resize/car1_slider.jpg">
					</div><!-- End Item -->
			 
					 <div class="item">
					  <img src="<%=UrlDelSitio%>/images/resize/car6_slider.jpg">
					</div><!-- End Item -->
					
					<div class="item">
					  <img src="<%=UrlDelSitio%>/images/resize/car1_slider.jpg">
					</div><!-- End Item -->
					
					<div class="item">
					  <img src="<%=UrlDelSitio%>/images/resize/car6_slider.jpg">
					</div><!-- End Item -->
				  </div><!-- End Carousel Inner -->
				
				<!--<div class="item">
					  <img src="<%=UrlDelSitio%>/images/resize/car4_slider.jpg">
					   <div class="carousel-caption">
						<h3>Headline</h3>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
					  </div>
					</div><!-- End Item -->
				  </div><!-- End Carousel Inner -->

					<ul class="nav nav-pills nav-justified" style="width:1070px;height:400px; margin: 0 auto">
					  <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem ipsum dolor sit</small></a></li>
					  <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum dolor sit</small></a></li>
					  <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum dolor sit</small></a></li>
					  <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum dolor sit</small></a></li>
					</ul>
				</div><!-- End Carousel -->
			</div>
		</div>
	<script type="text/javascript">
		$(document).ready( function() {
			$('#myCarousel').carousel({
				interval:   2000
			});
			
			var clickEvent = false;
			$('#myCarousel').on('click', '.nav a', function() {
					clickEvent = true;
					$('.nav li').removeClass('active');
					$(this).parent().addClass('active');		
			}).on('slid.bs.carousel', function(e) {
				if(!clickEvent) {
					var count = $('.nav').children().length -1;
					var current = $('.nav li.active');
					current.removeClass('active').next().addClass('active');
					var id = parseInt(current.data('slide-to'));
					if(count == id) {
						$('.nav li').first().addClass('active');	
					}
				}
				clickEvent = false;
			});
		});
	</script>
	</body>
</html>


