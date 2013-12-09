<%inherit file="/_sidebar.mako"/>

<%def name="title()">Sheets and Tables</%def>

<%def name="h2(title)"><h2>${title}</h2></%def>
<%def name="h3(title)"><h3>${title}</h3></%def>


<%def name="body()">
<div class="select_sheet">

	<h1>Sheets and Tables</h1>

	<section>
		${h2('Combat')}
		
		<ul class="section_selector">
			<li class="col-xs-12 col-sm-6 col-md-4"><a href="/core/resources/weapons">
				<span class="glyphicon glyphicon-user"></span>
				Weapons
			</a></li>
		</ul>
	</section>



	<%doc>
	<p>Every tabletop game requires some form of record keeping both for the GM and the players.  The following sheets and tables are designed to record the most
	important information</p>
	
	<h4>Character Sheets</h4>
	
	<P>
		Cha
	</P>
	
	<P>
		<ul>
			<li>Experience Tracker</li>
			<li>NPC Sheet</li>
			<li>Social Encounter Sheet</li>
		</ul>
	</P>
	
	<P>
		<ul>
			<li>Character Creation Quick Sheet</li>
			<li>Combat Quick Sheet</li>
			<li>GM Reference Tables</li>
			<li></li>
		</ul>
	</P>
	
	</%doc>
	
</%def>
