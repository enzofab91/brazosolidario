<%--
    Document   : head
    Created on : May 8, 2016, 1:56:43 PM
    Author     : marccio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon.ico" type="image/x-icon">

		<!-- styles -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/slider.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap-theme.css">
		<link rel="stylesheet" href="css/bootstrap.css">

		<!-- scripts -->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<!--<script type="text/javascript" src="js/jcarousellite_1.0.1c5.js"></script>-->

		<style>

			.font-prox {
				font-family:  'Hoefler Text', Georgia, 'Times New Roman', serif;
				font-weight: normal;
				font-size: 2.5vmin;
				letter-spacing: 0.1vmin;
				/*line-height: 1.1vmin;*/
				/*margin:0px;*/
				text-align: center;
				text-transform: uppercase;
			}

			.subhead {
				font-family: "Lucida Grande", Tahoma;
				font-size: 1.5vmin;
				font-weight: lighter;
				font-variant: normal;
				text-transform: uppercase;
				/*margin-top: 1vmin;*/
				text-align: center!important;
				letter-spacing: 0.1vmin;
			}

			@media screen and (min-width: 0px) and (max-width: 600px) {
				#desktop-content{ display: none; }  /* show it on small screens */
				#mobile-content{ display: block; }  /* show it on small screens */
			}

			@media screen and (min-width: 600px) and (max-width: 2024px) {
				#desktop-content { display: block; }   /* hide it elsewhere */
				#mobile-content{ display: none; }  /* show it on small screens */
			}

		</style>
    </head>
</html>
