<%inherit file="/_sidebar.mako"/>
<%def name="title()">About</%def>
<%def name="jumbotron()">
<h1>${self.title()}</h1>
</%def>
<%def name="body()">
<%
    headings = [
        'about',
        'corporate_message',
        'terms_of_use',
        'privacy_policy'
    ]
    for heading in headings:
        self.include("about/_{0}.mako".format(heading))
%>
</%def>