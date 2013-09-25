<%def name="body()">
<!DOCTYPE html>
<html lang="en">

	<head>
		<%def name="title()">Default Title</%def>
		<title>${title()}</title>
		
		${head()}
	</head>

	<body>
		<a class="sr-only" href="#content">Skip navigation</a>
		<!-- Navigation -->
		${nav()}
		
		<!-- Content -->
		${next.body()}
		
		<!-- Footer -->
		${footer()}
	</body>

</html>
</%def>

<%def name="nav()">
	<%include file="_navbar.mako"/>
</%def>

<%def name="head()">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- External CSS -->
		<link href="${ asset_url }ext/css/bootstrap.min.css"       rel="stylesheet">
		##<link href="${ asset_url }ext/css/bootstrap-theme.min.css" rel="stylesheet">
		<link href="${ asset_url }ext/css/pygments-manni.css"      rel="stylesheet">
		
		<!-- Site CSS -->
		## For now lets stick with the vanila bootstrap - we can design once the markup is tidyed
		##<link href="${ asset_url }css/site.css" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="${ asset_url }ext/js/html5shiv.js"></script>
		<script src="${ asset_url }ext/js/respond.min.js"></script>
		<![endif]-->
		
		<!-- Favicons -->
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${ static_url }ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${ static_url }ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72"   href="${ static_url }ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed"                 href="${ static_url }ico/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon"                                href="${ static_url }ico/favicon.png">
</%def>

<%def name="footer()">
		<%include file="_footer.mako"/>
		
		<!-- Javascript -->
		<script src="${ asset_url }ext/js/jquery.min.js"></script>
		<script src="${ asset_url }ext/js/bootstrap.min.js"></script>
</%def>