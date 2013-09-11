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
      <h3>Tools</h3>
        <div>
          <ul>
            <li><a href="${a('/core/resources/toindex')}">Introduction</a></li>
            <li><a href="${a('/core/resources/tosheets')}">Sheets and Tables</a></li>
            <li><a href="${a('/core/resources/toaids')}">Generic Game Aids</a></li>
          </ul>
        </div>
      <h3>Preparation</h3>
        <div>
          <ul>
            
          </ul>
        </div>
      <h3>Running</h3>
        <div>
          <ul>
            <li><a href="${a('/core/resources/rnfame')}">Using Fame and Infamy</a></li>
            <li><a href="${a('/core/resources/rnevents')}">Random Events</a></li>
          </ul>
        </div>
    </div>
</%def>

<%def name="body()">
    ${next.body()}
</%def>
