<%inherit file="_sidebar.mako"/>

<%def name="body()">
    ${ self.h2('Hello') }

        moo moo moo2
<%doc>        
        ${self.h3('sub Hello')}
        poo poo
        poo
        
        ${self.h3('sub again')}
    
    ${self.h2('MORE!!!')}
    
        ${self.h3('more more')}
</%doc>

##<%include file="toolbar.html" args="current_section='members', username='ed'"/>
##<%include file="_test1.mako"/>
##<%include file="_test2.mako"/>
##<%include file="_test1.mako" args="h2=self.h2, h3=self.h3"/>
${self.include("_test1.mako")}

</%def>