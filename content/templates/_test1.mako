##<%namespace file="/_sidebar.mako" import="h2,h3" />
##<%page args="x, y, someval=8, scope='foo', **kwargs"/>
<%page args="h2, h3"/>


_test1.mako

${h2('Heading Test ABCDEF')}
##<%def name="body(h2, h3)">
##</%def>