<!DOCTYPE html>
<html lang="es">
	<head>
        <%@include file="head.jsp" %>
		<title>Brazo Solidario</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	</head>
    <header>
        <%@include file="header.jsp" %>
    </header>

	<body>
		<!--e6ebf3-->
		<!--#bfc9d7-->
		<!--#d9dee6-->

		<div class="container" style="padding:0vmin">
			<!--si es desktop, mostrar sidebar-->
			<% if (request.getHeader("User-Agent").indexOf("Mobile") != -1) {
					columnWidth = 12;
				} else {
					columnWidth = 8;
				}%>
			<!--contenedor de contenido-->
			<div class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>" style="background-color:#e6ebf3">
				<div class="row" style="padding-top:10vmin;padding-bottom:10vmin">
					<img src="img/diadelniñocarteleras.jpg" style="height: 70vmin" class="img-responsive center-block"></img>
				</div>
			</div>
			<% if (request.getHeader("User-Agent").indexOf("Mobile") == -1) {
					columnWidth = 4;%>
			<!--contenedor de sidebar-->
			<div id="visible-desktop" class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>">
				<%@include file="sidebar.jsp" %>
			</div>
			<%}%>
		</div>

	</body>
</html>

<script>
	$("#content").load("/home #content > *");
</script>