<%inherit file="/_sidebar.mako"/>

<%def name="body()">
<div class="select_settings">
    

    <h1>Settings</h1>
    
    <ul class="section_selector">
        <li><a href="${a('/settings/oneoff')}">One Off Wonders</a></li>
        % for addon in request.registry.settings['addons'].values():
        <li><a href="${a(addon.link)}">${addon.name}</a></li>
        % endfor
        <li><a href="${a('/settings/space')}">Space</a></li>
    </ul>
</div>
</%def>
