<%inherit file="/_sidebar.mako"/>
<%def name="title()">Tasks</%def>
<%def name="jumbotron()">
<h1>${self.title()}</h1>
</%def>
<%def name="body()">
<%
    headings = [
        'introduction',
        'performing_tasks',
        'changing_tasks',
        'modifiers',
        'scrutiny',
        'social',
        'research',
        'planning',
        'stealth',
        'investigation'
    ]
    for heading in headings:
        self.include("core/rules/tasks/_{0}.mako".format(heading))
%>
</%def>