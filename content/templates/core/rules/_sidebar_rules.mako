<%inherit file="/_sidebar.mako"/>

<%def name="sidebar()">



<li>
  <a href="#glyphicons">Glyphicons</a>
  <ul class="nav">
    <li><a href="#glyphicons-glyphs">Available glyphs</a></li>
    <li><a href="#glyphicons-how-to-use">How to use</a></li>
    <li><a href="#glyphicons-examples">Examples</a></li>
  </ul>
</li>



  <h3>Character</h3>
    <div>
        <ul>
          <li><a href="${a('/core/rules/csintro')}">Character Introduction</a></li>
          <li><a href="${a('/core/rules/csattributes')}">Attributes</a></li>
          <li><a href="${a('/core/rules/csboosts')}">Boosters</a></li>
          <li><a href="${a('/core/rules/cscomprofs')}">Combat Proficiencies</a></li>
          <li><a href="${a('/core/rules/csconditions')}">Damage Limits</a></li>
          <li><a href="${a('/core/rules/cssecondaries')}">Secondary Stats</a></li>
          <li><a href="${a('/core/rules/csbackgrounds')}">Backgrounds</a></li>
          <li><a href="${a('/core/rules/cstraits')}">Traits</a></li>
          <li><a href="${a('/core/rules/cstropes')}">Tropes</a></li>
          <li><a href="${a('/core/rules/csabilities')}">Abilities</a></li>
          <li><a href="${a('/core/rules/csallies')}">Allies</a></li>
        </ul>
    </div>
  <h3>Tasks</h3>
    <div>
        <ul>
          <li><a href="${a('/core/rules/trintro')}">Tasks Introduction</a></li>
          <li><a href="${a('/core/rules/trtaskres')}">Performing Tasks</a></li>
          <li><a href="${a('/core/rules/trtaskcons')}">Changing Tasks</a></li>
          <li><a href="${a('/core/rules/trmodifiers')}">Task Modifers</a></li>
          <li><a href="${a('/core/rules/trscrtasks')}">Scrutiny</a></li>
          <li><a href="${a('/core/rules/trsoctasks')}">Socialising</a></li>
          <li><a href="${a('/core/rules/trrestasks')}">Research</a></li>
          <li><a href="${a('/core/rules/trplatasks')}">Planning</a></li>
          <li><a href="${a('/core/rules/trstetasks')}">Stealth</a></li>
        </ul>
    </div>
  <h3>Combat</h3>
    <div>
        <UL>
          <li><a href="${a('/core/rules/crintro')}">Combat Introduction</a></li>
          <li><a href="${a('/core/rules/crcomsbs')}">Combat Step by Step</a></li>
          <li><a href="${a('/core/rules/crcomact')}">Combat Actions</a></li>
          <li><a href="${a('/core/rules/crconmods')}">Conditions and Modifiers</a></li>
          <li><a href="${a('/core/rules/crtakdmg')}">Taking Damage</a></li>
          <li><a href="${a('/core/rules/crhealing')}">Healing</a></li>
          <li><a href="${a('/core/rules/crmindmg')}">Mind Damage</a></li>
          <li><a href="${a('/core/rules/crsouldmg')}">Soul Damage</a></li>
        </UL>
    </div>
  <h3>World</h3>
    <div>
        <ul>
          <li><a href="${a('/core/rules/envintro')}">World Introduction</a></li>
          <li><a href="${a('/core/rules/enveffects')}">Environmental Effects</a></li>
          <li><a href="${a('/core/rules/envhorfear')}">Horror and Fear</a></li>
          <li><a href="${a('/core/rules/envtoxpath')}">Pathogens, Toxins and Drugs</a></li>
        </ul>
    </div>
  <h3>Tools</h3>
    <div>
        <UL>
          <li><a href="${a('/core/rules/tointro')}">Tools Introduction</a></li>
          <li><a href="${a('/core/rules/toweapons')}">Weapons</a></li>
          <li><a href="${a('/core/rules/toarmour')}">Armours</a></li>
          <li><a href="${a('/core/rules/tovehicles')}">Vehicles</a></li>
        </UL>
    </div>
    <h3>Appendices</h3>
    <div>
        <UL>
          <li><a href="${a('/core/rules/apcharsbs')}">Character Creation</a></li>
          <li><a href="${a('/core/rules/apstrg')}">Strength TN Tables</a></li>
          <li><a href="${a('/core/rules/aprefx')}">REFX Action Tables</a></li>
          <li><a href="${a('/core/rules/apstam')}">Stamina TN Tables</a></li>
          <li><a href="${a('/core/rules/apcons')}">Constitution TN Tables</a></li>
          <li><a href="${a('/core/rules/apcomp')}">Comprehension TN Tables</a></li>
          <li><a href="${a('/core/rules/apglossary')}">Glossary</a></li>
        </UL>
    </div>
  </div>
</%def>

<%def name="body()">
    ${next.body()}
</%def>
