<%inherit file="_base.mako"/>

<%def name="body()">

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3">
                ${next.sidebar()}
            </div>

            <div class="span9">
                ${next.body()}
            </div>
        </div>
    </div>

</%def>
