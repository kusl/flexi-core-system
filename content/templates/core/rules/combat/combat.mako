<%inherit file="/_sidebar.mako"/>
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