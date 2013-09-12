<%def name="body()">
<!DOCTYPE html>
<html>
    <head>
        <%def name="title()">Default Title</%def>
        <title>${title()}</title>
        
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS Styles -->
        <link href="${h.asset('css/site.css')}" rel="stylesheet">
        <link href="${h.asset('css/ui-lightness/jquery-ui-1.10.2.custom.css')}" rel="stylesheet">
        <link href="${h.asset('css/bootstrap.css')}" rel="stylesheet" media="screen">
		
        <!-- Javascript -->
        <script src="${h.asset('js/jquery-1.9.1.js')}"></script>
        <script src="${h.asset('js/jquery-ui-1.10.2.custom.js')}"></script>
        <script src="${h.asset('js/bootstrap.min.js')}"></script>

    </head>
    
    <body>
        <%include file="_toolbar.mako"/>
		<div style="padding-top:50px;">
		        ${next.body()}
		</div>
    </body>
</html>
</%def>



<%doc>
<div>
<%include file="toolbar.html"/>
</div>

<div class="sidebar">
<%include file="crsidebar.html"/>
</div>
</%doc>
