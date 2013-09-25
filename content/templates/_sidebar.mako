<%inherit file="_base.mako"/>

<%def name="body()">

	<div class="container bs-docs-container">
		<div class="row">
			
			<!-- Sidebar -->
			<div class="col-md-3">
				<div class="bs-sidebar hidden-print" role="complementary">
					<ul class="nav bs-sidenav">
						${next.sidebar()}
					</ul>
				</div>
			</div>
			
			<!-- Content -->
			<div class="col-md-9" role="main">
				${next.body()}
			</div>
		</div>
	</div>

</%def>
