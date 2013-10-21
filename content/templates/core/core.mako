<%inherit file="/_sidebar.mako"/>

<%def name="h2(title)"><h2>${title}</h2></%def>
<%def name="h3(title)"><h3>${title}</h3></%def>


<%def name="body()">
<div class="select_core">
    
	<h1>Flexi Core System</h1>
	##<p>Welcome to the introductory page for the Flexi System.  Before I answer a few questions you might have I would like to outline the
	##different sections of the rules.</p>

    <section>
        ${h2('Rules')}
        
        <ul class="section_selector">
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/character')}">
                <span class="glyphicon glyphicon-user"></span>
                Character
                ##The <b>Character</b> section describes the various statistics you will
                ##find on the character sheet, how to generate them, and what they represent.
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/tasks')}">
                <span class="glyphicon glyphicon-search"></span>
                Tasks
                ##The <b>Tasks</b> section describes the game mechanics for resolving any
                ##tasks that the character wants to perform outside of combat..
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/combat')}">
                <span class="glyphicon glyphicon-fire"></span>
                Combat
                ##The <b>Combat</b> section describes the various game mechanics that resolve
                ##combat and also the consequences of it.
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/world')}">
                <span class="glyphicon glyphicon-globe"></span>
                Enviroment
                ##The <b>World</b> section describes the various mechanics that involve the
                ##interaction of characters with their environment.
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/tools')}">
                <span class="glyphicon glyphicon-wrench"></span>
                Tools
                ##The <b>Tools</b> section describes the various statisitcs for different
                ##equipment, as well as the game mechanics for using them.
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/rules/appendicies')}">
                <span class="glyphicon glyphicon-book"></span>
                Appendices
                ##The <b>Appendices</b> section consists of the term glossary, a brief outline
                ##of the usual character creation process and important lists.
            </a></li>
        </ul>
        
    </section>
    
	<div class="clearfix"></div>
    
    <section>
        ${h2('Resorces')}
        
        ${h3('Tools')}
        <ul class="section_selector">
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/resources/sheets')}">
                <span class="glyphicon glyphicon-list-alt"></span>
                Sheets and Tables
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="/core/resources/game_aids">
                <span class="glyphicon glyphicon-plus-sign"></span>
                Generic Game Aids
            </a></li>
        </ul>
        
        <div class="clearfix"></div>
        ${h3('Preparation')}
        <ul class="section_selector">
        </ul>
        
        <div class="clearfix"></div>
        ${h3('Running a Session')}
        <ul class="section_selector">
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/resources/fame')}">
                <span class="glyphicon glyphicon-star-empty"></span>
                Fame and Infamy
            </a></li>
            <li class="col-xs-12 col-sm-6 col-md-4"><a href="${a('/core/resources/random_events')}">
                <span class="glyphicon glyphicon-random"></span>
                Random Events
            </a></li>
        </ul>

    </section>

</div>
</%def>