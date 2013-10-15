<%inherit file="/_sidebar.mako"/>
<%def name="title()">Character</%def>
<%def name="jumbotron()">
<h1>${self.title()}</h1>
</%def>
<%def name="body()">
<%
    headings = [
        'introduction',
        'attributes',
        'conditions',
        'combat_proficiencies',
        'conditions',
        'secondary_statistics',
        'backgrounds',
        'traits',
        'tropes',
        'abilitys',
        'allies',
    ]
    for heading in headings:
        self.include("core/rules/character/_{0}.mako".format(heading))
%>
</%def>