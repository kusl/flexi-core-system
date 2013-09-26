<%inherit file="_base.mako"/>

<%def name="init()"><%
	self.sidebar_content = h.OrderedDefaultdict(list)
%>${parent.init()}</%def>

<%def name="h2(title)">
	##<section>
	<h2 id="${h.encode_id(title)}">${title}</h2>
	<% self.sidebar_content[title] %>
</%def>

<%def name="h3(title)">
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


<%def name="body()">
<% body_capture = capture(next.body) %>

% if self.sidebar_content:
	<!-- Sidebar -->
	<div class="col-md-3">
		<div class="bs-sidebar hidden-print" role="complementary">
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
