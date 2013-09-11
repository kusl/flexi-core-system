<%inherit file="../../_sidebar.mako"/>

<%def name="sidebar()">

  <script>
  $(function() {
    $( "#accordion" ).accordion({
      active: false,
      collapsible: true,
      heightStyle: "content"
    });
  });
  </script>

    <div id="accordion">
    <h3>Introduction</h3>
        <div>
            <p> <a href="${a('/settings/space/spcindex')}">Introduction</a><br>
            </p>
        </div>
    <h3>Characters</h3>
        <div>
            <p> <a href="${a('/settings/space/spcchar')}">The Legion</a><br> 
            </p>
        </div>
    </div>
</%def>

<%def name="body()">
    ${next.body()}
</%def>
