<%inherit file="/_sidebar.mako"/>
<%def name="title()">Tools</%def>
<%def name="body()">
<h1>${self.title()}</h1>
<%
    headings = [
        'introduction',
        'weapons',
        'armors',
        'vehicles',
    ]
    for heading in headings:
        self.include("core/rules/tools/_{0}.mako".format(heading))
%>
</%def>