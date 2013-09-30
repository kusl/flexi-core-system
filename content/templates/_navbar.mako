<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
<div class="container">

	<div class="navbar-header">

		<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>


		<!-- Brand Title -->
		<a href="${a('/index')}" class="navbar-brand">Destruction Engine</a>
	</div>

	<a href="#top-ancor" class="fl-nav-goto-top">
		Top
	</a>

	<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
		<ul class="nav navbar-nav">
		
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Core System <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="${a('/core/rules/csindex')}">Core Rules</a></li>
					<li><a href="${a('/core/resources/toindex')}">Resources</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="${a('/settings/space/spcindex')}">Space</a></li>
					<li><a href="${a('/settings/oneoff/ooindex')}">One Off Wonders</a></li>
					% for addon in request.registry.settings['addons'].values():
					<li><a href="${a(addon.link)}">${addon.name}</a></li>
					% endfor
				</ul>
			</li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Projects<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#">Forum</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Community<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#">Forum</a></li>
					<li><a href="http://www.flexi.destruction-engine.com/blog/">Developers Blog</a></li>
				</ul>
			</li>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">About<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#">Contact</a></li>
					<li><a href="${a('/about/ppolicy')}">Privacy Policy</a></li>
				</ul>
			</li>
		
		</ul>
	</nav>

</div>
</header>
