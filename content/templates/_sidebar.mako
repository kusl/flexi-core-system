<%inherit file="_base.mako"/>

## Sidebar Tracking -----------------------------------------------------------

<%def name="init()"><%
	self.sidebar_content = h.OrderedDefaultdict(list)
%>${parent.init()}</%def>

<%def name="h2(title)">
	##<section>
	##<a href="#back-top-ancor" class="back-top-link">^</a>
	<h2 id="${h.encode_id(title)}">${title}</h2>
	<% self.sidebar_content[title] %>
</%def>

<%def name="h3(title)">
	##<a href="#back-top-ancor" class="back-top-link">^</a>
	<h3 id="${h.encode_id(self.sidebar_content.last(),title)}">${title}</h3>
	<% self.sidebar_content[self.sidebar_content.last()].append(title) %>
</%def>

<%def name="sidebar()">
% for title1 in self.sidebar_content.keys() :
<li>
	<a href="#${h.encode_id(title1)}">${title1}</a>
	<ul class="nav">
		% for title2 in self.sidebar_content[title1]:
		<li><a href="#${h.encode_id(title1, title2)}">${title2}</a></li>
		% endfor
	</ul>
</li>
% endfor
</%def>

<%def name="include(template_filename)">
<section>
<%include file="${template_filename}" args="h2=self.h2, h3=self.h3"/>
</section>
</%def>

<%def name="navbar_elements()">
	<% folder_path = h.folder_path(self) %>
	% if folder_path:
	##<ol class="breadcrumb">
		% for folder in [f.capitalize() for f in folder_path]:
			% if not loop.last:
			<li><span class="glyphicon glyphicon-chevron-right"></span><a href="/${"/".join(folder_path[:loop.index+1]+[folder_path[loop.index]])}">${folder}</a></li>
			% else:
			<li class="active"><span class="glyphicon glyphicon-chevron-right"></span><a href="#top-ancor">${folder}</a></li>
			% endif
		% endfor
	##</ol>
	% endif
</%def>

## Body -----------------------------------------------------------------------

<%def name="body()">
<% body_capture = capture(next.body) %>

##${breadcrumbs()}

% if self.sidebar_content or hasattr(next, 'sidebar'):
	<!-- Sidebar -->
	<div class="col-md-3">
		<div class="bs-sidebar hidden-print affix-top" role="complementary" data-spy="affix" data-offset-top="0">
			<ul class="nav bs-sidenav">
				${self.sidebar()}
			</ul>
		</div>
	</div>
	
	<!-- Content -->
	<div class="col-md-9" role="main">
		${body_capture | n}
	</div>
% else:
	<div class="col-md-12" role="main">
		${body_capture | n}
	</div>
% endif

</%def>
