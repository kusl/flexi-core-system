<%inherit file="/_sidebar.mako"/>

<%def name="manifest()">/cache.manifest</%def>

<%def name="title()">Offline</%def>

<%def name="body()">
<h1>Offline</h1>
	<p>'Allow' this site to store data to make this site avalable without a network connection.</p>
	
% if request.registry.settings['template.offline.enabled']:
	
% else:
	Offline mode disabled in settings
% endif

</%def>