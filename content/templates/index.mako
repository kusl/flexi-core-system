<%inherit file="_sidebar.mako"/>

<%def name="title()">Index</%def>

<%def name="body()">

<section class="col-xs-12 col-md-3 homepage_navigation">
    <ul class="section_selector">
        <li class="col-sm-6 col-md-12"><a href="${a('/core/core')}"        ><span class="glyphicon glyphicon-play-circle"  ></span> Core       </a></li>
        <li class="col-sm-6 col-md-12"><a href="${a('/settings/settings')}"><span class="glyphicon glyphicon-picture"      ></span> Settings   </a></li>
        <li class="col-sm-6 col-md-12"><a href="${a('/about/about')}"      ><span class="glyphicon glyphicon-question-sign"></span> About      </a></li>
        <li class="col-sm-6 col-md-12"><a href="${a('/offline')}"          ><span class="glyphicon glyphicon-save"         ></span> Offline    </a></li>
    </ul>
</section>

<div class="clearfix visible-sm"></div>

<section class="col-xs-12 col-md-9">
        ##<p>Welcome to Destruction Engine Publishing home of the Flexi System and the Shattered Covenant setting.</p>
        
        <h1>News</h1>
        <p><B>Twenty Sixth of June Two Thousand and Thirteen Anno Domini.</B></p>
        
        <P>The first release of the core rules of the Flexi System is well under way.  The setting information
        for Shattered Covenant is being edited as we speak and the gamemaster rules are being developed.</P>
        
        <p>We hope to release the rules and setting for beta playtesting by the eighth of June and are currently
        finalising our playtesting incentives.</p>
        
        <P>More news soon.</P>
        
        <div class="extra">
            <p>This is extra stuff. Premium content. A little bit more then the average.</p>
        </div>
        
        <div>
            <div>
                
                <h3>Shattered Covenants</h3>
                
                <p>The Legion have taken Earth and free humanity has fled to the stars.</p>
            </div>
            
            <div>
                
                <h3>Dominion</h3>
                
                <p>You have been chosen by the grace of the his royal highness to govern an imperial domain.
                Fail and you shall know no peace.  Succeed and the world will be your oyster.</p>
                
            </div>
            
            
        </div>
        
</section>
</%def>
