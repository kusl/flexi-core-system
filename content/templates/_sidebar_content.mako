	<% sidebar_content = h.OrderedDefaultdict(list) %>
	
	<%def name="h2(title)">
		##<section>
		<h2 id="${h.encode_id(title)}">${title}</h2>
		<% sidebar_content[title] %>
	</%def>
	
	<%def name="h3(title)">
		<h3 id="${h.encode_id(sidebar_content.last(),title)}">${title}</h3>
		<% sidebar_content[sidebar_content.last()].append(title) %>
	</%def>
	
	<%def name="render()">
	% for title1 in sidebar_content.keys() :
	<li>
		<a href="#${h.encode_id(title1)}">${title1}</a>
		<ul class="nav">
			% for title2 in sidebar_content[title1]:
			<li><a href="#${h.encode_id(title1, title2)}">${title2}</a></li>
			% endfor
		</ul>
	</li>
	% endfor
	</%def>