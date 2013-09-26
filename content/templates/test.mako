<%inherit file="_sidebar.mako"/>

<%def name="body()">
    ${ self.h2('Hello') }

        moo moo moo
        
        ${self.h3('sub Hello')}
        poo poo
        poo
        
        ${self.h3('sub again')}
    
    ${self.h2('MORE!!!')}
    
        ${self.h3('more more')}

</%def>