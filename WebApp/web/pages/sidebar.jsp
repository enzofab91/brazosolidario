<%--
    Document   : sidebar
    Created on : Aug 3, 2016, 12:49:54 PM
    Author     : marccio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body>
		<div id="fb-root"></div>
		<script>(function (d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id))
					return;
				js = d.createElement(s);
				js.id = id;
				js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>


		<div class="container-fluid" style="padding:0vmin">
			<!--twitter feed-->
			<a class="twitter-timeline"  href="https://twitter.com/BrazoSolidario"
			   data-widget-id="712778314960736257">Tweets por el @BrazoSolidario.</a>
			<!--facebook feed-->
			<div style="padding-left:1vmin" class="fb-page" data-href="https://www.facebook.com/brazosolidario" data-tabs="timeline" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true"><blockquote cite="https://www.facebook.com/brazosolidario" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/brazosolidario">Brazo Solidario</a></blockquote></div>
		</div>
	</body>
</html>

<script>
	//twitter feed
	!function (d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
		if (!d.getElementById(id)) {
			js = d.createElement(s);
			js.id = id;
			js.src = p + "://platform.twitter.com/widgets.js";
			fjs.parentNode.insertBefore(js, fjs);
		}
	}(document, "script", "twitter-wjs");
</script>