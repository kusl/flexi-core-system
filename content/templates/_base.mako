<%def name="init()"></%def>

<%def name="title()">Flexi System</%def>

<%def name="body()">
${self.init()}\
<!DOCTYPE html>
<html lang="en">

	<head>
		<title>${self.title()}</title>
		${head()}
	</head>

	<body data-spy="scroll" data-target=".bs-sidebar" data-offset="60">
		<a class="sr-only" href="#content">Skip navigation</a>
		<!-- Navigation -->
		${navbar()}
		
		<!-- Content -->
		<div class="container bs-docs-container">
			<div class="row">
				<a id="top-ancor"></a>
				${next.body()}
			</div>
		</div>
		
		<!-- Footer -->
		${self.footer()}
		${scripts()}
	</body>

</html>
</%def>

<%def name="navbar()">
		<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Top Button -->
					<a href="#top-ancor" class="visible-xs fl-nav-goto-top">Top</a>
					<!-- Brand Title -->
					<a href="${a('/index')}" class="navbar-brand">Destruction Engine</a>
				</div>
				
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
					<ul class="nav navbar-nav">
						${self.navbar_elements()}
					</ul>
				</nav>
			</div>
		</header>
</%def>

<%def name="navbar_elements()">
	<%include file="_navbar.mako"/>
</%def>

<%def name="head()">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<!-- External CSS -->
		<link href="${ asset_url }ext/css/bootstrap.min.css"       rel="stylesheet">
		<link href="${ asset_url }ext/css/bootstrap-theme.min.css" rel="stylesheet">
		##<link href="${ asset_url }ext/css/pygments-manni.css"      rel="stylesheet">
		
		<!-- Site CSS -->
		<link href="${ asset_url }css/flexi.css" rel="stylesheet">
		
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
</%def>

<%def name="scripts()">
	<!-- Javascript -->
	<script src="${ asset_url }ext/js/jquery.min.js"></script>
	<script src="${ asset_url }ext/js/bootstrap.min.js"></script>
	<script src="${ asset_url }js/flexi.js"></script>
</%def>