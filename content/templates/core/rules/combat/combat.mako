<%inherit file="/_sidebar.mako"/>
<%def name="title()">Combat</%def>
<%def name="jumbotron()">
<h1>${self.title()}</h1>
</%def>
<%def name="body()">
<%
    headings = [
        'introduction',
        'steps',
        'actions',
        'modifiers',
        'damage',
        'healing',
        'mind_damage',
        'soul_damage',
    ]
    for heading in headings:
        self.include("core/rules/combat/_{0}.mako".format(heading))
%>
</%def>