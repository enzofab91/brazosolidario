<%--
    Document   : contact
    Created on : Aug 3, 2016, 6:22:30 PM
    Author     : marccio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
		<script src="js/validator.min.js"></script>
		<script src="js/typeahead.js"></script>
		<title>Brazo Solidario</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
	<header>
        <%@include file="header.jsp" %>
    </header>
    <body>





		<div class="container" style="padding:0vmin">
			<!--si es desktop, mostrar sidebar-->
			<%columnWidth = 12;%>
			<!--contenedor de contenido-->
			<div class="col-lg-<%=columnWidth%> col-md-<%=columnWidth%> col-sm-<%=columnWidth%> col-xs-<%=columnWidth%>" style="background-color:#e6ebf3">
				<form name="theform" class="form-horizontal" role="form" method="post" action="mailto:contacto@brazosolidario.com" style="padding:5vmin">
					<div class="form-group">
						<label for="name" class="col-sm-2 control-label">Nombre</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="name" name="name" placeholder="Nombre y Apellido" value="">
						</div>
						<div class="form-group">
							<div  id="nameCheck"></div>
                        </div>
					</div>

					<div class="form-group">
						<label for="mail" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-8">
							<input type="email" name="mail" autocomplete="off" class="form-control" id="mail" placeholder="email@dominio" required>
						</div>
						<div class="form-group">
							<div  id="ajaxResponse2"></div>
                        </div>
						<div class="help-block with-errors"></div>
					</div>

					<div class="form-group">
						<label for="message" class="col-sm-2 control-label">Mensaje</label>
						<div class="col-sm-8">
							<!--<input type="text" class="form-control" id="message" name="message" placeholder="Mensaje" value="">-->
							<textarea id="message" name="message" class="form-control" style="resize: none" rows="4" name="message"></textarea>
						</div>
						<div class="form-group">
							<div  id="messageCheck"></div>
                        </div>
					</div>
					<div class="form-group">
						<div class="col-sm-8 col-sm-offset-2">
							<input id="boton-enviar" name="submit" type="submit" disabled="disabled" value="Send" class="btn btn-primary">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-8 col-sm-offset-2">
							<! Will be used to display an alert to the user>
						</div>
					</div>
				</form>
			</div>
    </body>
</html>


<script>
	var nombre = false;
	var mail = false;
	var mensaje = false;

	$(document).ready(function () {
		$('#mail').keyup(function (event) {
			var name = $('#mail').val();
			$.get('ajaxmail', {
				mail: name
			}, function (responseText) {
				var div = $('#ajaxResponse2');
				if (responseText === 'OK') {
					div.text('').html('<div><h5><i class="glyphicon glyphicon-ok"></i> <a style="color:##00FF00"> Email válido</h5></div>');
					mail = true;
					checkform();
				} else {
					if (responseText === 'SIN_ESPACIOS') {
						div.text('').html('<div><h5><i class="glyphicon glyphicon-remove"></i> <a style="color:#FF0000"> No debe contener espacios</h5></div>');
						mail = false;
						checkform();
					} else if (responseText === 'FORMATO_INVALIDO') {
						div.text('').html('<div><h5><i class="glyphicon glyphicon-remove"></i> <a style="color:#FF0000"> Formato inválido</h5></div>');
						mail = false;
						checkform();
					} else {
						div.text('').html('<div><h5></h5></div>');
						mail = false;
						checkform();
					}
				}
				;
			});
		});

	});

	function checkform() {
		if (mail && nombre && mensaje) {
			document.getElementById('boton-enviar').disabled = false;
		} else {
			document.getElementById('boton-enviar').disabled = true;
		}
	}

	$(document).ready(function () {
		$('#name').keyup(function (event) {
			var input = $('#name').val();
			var div = $('#nameCheck');
			if (input.length < 4) {
				div.text('').html('<div><h5><i class="glyphicon glyphicon-remove"></i> <a style="color:#FF0000"> Ingrese un nombre de al menos 4 caracteres</a></h5></div>');
				nombre = false;
			} else {
				div.text('').html('<div><h5><i class="glyphicon glyphicon-ok"></i> <a style="color:#00FF00"></h5></div>');
				nombre = true;
			}
		});
	});

	$(document).ready(function () {
		$('#message').keyup(function (event) {
			var input = $('#message').val();
			var div = $('#messageCheck');
			if (input.length < 30) {
				div.text('').html('<div><h5><i class="glyphicon glyphicon-remove"></i><a style="color:#FF0000"> Ingrese un mensaje de al menos 30 caracteres</a></h5></div>');
				mensaje = false;
			} else {
				div.text('').html('<div><h5><i class="glyphicon glyphicon-ok"></i> <a style="color:#00FF00"></h5></div>');
				mensaje = true;
			}
		});
	});

</script>