<%def name="init()"></%def>

<%def name="title()">Flexi System</%def>

<%def name="body()">
${self.init()}\
<!DOCTYPE html>
<html
	lang="en"
	% if request.registry.settings['template.offline.enabled'] and hasattr(self, 'manifest'):
	manifest="${self.manifest()}"
	% endif
>

	<head>
		<title>${self.title()}</title>
		${head()}
	</head>

	<body data-spy="scroll" data-target=".bs-sidebar" data-offset="120">
		<a class="sr-only" href="#content">Skip navigation</a>
		<!-- Navigation -->
		${navbar()}
		
		% if hasattr(self, 'jumbotron'):
		<!-- Jumbotron -->
		<div class="jumbotron">
			<div class="container">
				${self.jumbotron()}
			</div>
		</div>
		% endif
		
		<!-- Content -->
		<div class="container bs-docs-container">
			<div class="row">
				<a id="top-ancor"></a>
				${next.body()}
			</div>
		</div>
		
		<!-- Modal dialogs -->
		${modals()}
		
		<!-- Footer -->
		${self.footer()}
		${scripts()}
	</body>

</html>
</%def>

<%def name="navbar()">
		<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
			<div class="container">
				<!-- Top Button -->
				<a href="#top-ancor" class="visible-xs visible-sm fl-nav-goto-top"><span class="glyphicon glyphicon-eject"></span><span class="hidden">Top</span></a>
				
				<!-- Title + Home -->
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Brand Title -->
					<a href="${a('/index')}" class="navbar-brand">Destruction Engine</a>
					<!-- Status Identifyers -->
					<div id="navbar-status">
						<span id="status-offline" class="hidden">(Offline mode)</span>
						<span id="status-extra"   class="extra_toggle">Extra</span>
					</div>
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
		##<link href="${ asset_url }ext/css/bootstrap-theme.min.css" rel="stylesheet">
		##<link href="${ asset_url }ext/css/pygments-manni.css"      rel="stylesheet">
		
		<!-- Site CSS -->
		<link href="${ static_url }css/flexi.css" rel="stylesheet">
		
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

<%def name="modals()">
	<!-- Modal - Progress Bar -->
	<div class="modal fade" id="modalProgress" tabindex="-1" role="dialog" aria-labelledby="modalProgressLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Updating Offline Content</h4>
				</div>
				<div class="modal-body">
					
					<div class="progress">
						<div id="progress-bar" class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
							<span class="sr-only"></span>
						</div>
					</div>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					##<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</%def>
