<%--
    Document   : header
    Created on : Aug 3, 2016, 12:22:03 PM
    Author     : marccio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
		<div class="container">
			<div class="row">
				<% short columnWidth = 4;%>
				<div class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>">
					<img class="center-block" src="img/logo128.png" style="height: 15vmin"></img>
				</div>
				<% columnWidth = 4;%>
				<div class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>"></div>
				<% columnWidth = 4;%>
				<div class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>" style="margin-top:4vmin">
					<a href="http://www.facebook.com/brazosolidario" target="_blank">
						<img src="img/social-fb.png" style="height: 7vmin"></img>
					</a>
					<a href="http://www.instagram.com/brazosolidario" target="_blank">
						<img src="img/social-ig.png" style="height: 7vmin"></img>
					</a>
					<a href="http://www.twitter.com/brazosolidario" target="_blank">
						<img src="img/social-tw.png" style="height: 7vmin"></img>
					</a>
				</div>
			</div>
			<div class="row">
				<nav class="navbar navbar-default">
					<div class="container" style="background-color:#d9dee6">
						<ul class="nav navbar-nav">
							<%String uri = request.getRequestURI();

								String pageName = uri.substring(uri.lastIndexOf("/") + 1);
							%>
							<%if (pageName.equals("home.jsp")) {%>
							<li class="active">
							<%} else {%> <li>
								<%}%>
								<a href="/home">Home</a></li>
								<%if (pageName.equals("about.jsp")) {%>
							<li class="active">
							<%} else {%> <li>
								<%}%>
								<a href="/about">Acerca de</a></li>
								<%if (pageName.equals("contact.jsp")) {%>
							<li class="active">
							<%} else {%> <li>
								<%}%>
								<a href="/contact">Contacto</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
    </body>
</html>
