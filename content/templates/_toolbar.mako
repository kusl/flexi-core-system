## THIS IS AN INCLUDE!!!!!!

 <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="${a('/index')}">Destruction Engine</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Core System<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="${a('/core/rules/csindex')}">Core Rules</a></li>
                  <li><a href="${a('/core/resources/toindex')}">Resources</a></li>
                </ul>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="${a('/settings/space/spcindex')}">Space</a></li>
                  <li><a href="${a('/settings/oneoff/ooindex')}">One Off Wonders</a></li>
                    % for addon in request.registry.settings['addons'].values():
                    <li><a href="${a(addon.link)}">${addon.name}</a></li>
                    % endfor
                </ul>
               <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Projects<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Forum</a></li>
                </ul>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Community<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Forum</a></li>
                  <li><a href="http://www.flexi.destruction-engine.com/blog/">Developers Blog</a></li>
                </ul>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">About<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Contact</a></li>
                  <li><a href="${a('/about/ppolicy')}">Privacy Policy</a></li>
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
