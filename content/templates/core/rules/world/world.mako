<%inherit file="/_sidebar.mako"/>
<%def name="title()">World</%def>
<%def name="jumbotron()">
<h1>${self.title()}</h1>
</%def>
<%def name="body()">
<%
    headings = [
        'introduction',
        'enviromental_effects',
        'horror_fear',
        'pathogens_toxins_drugs',
    ]
    for heading in headings:
        self.include("core/rules/world/_{0}.mako".format(heading))
%>
</%def>