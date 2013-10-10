<%inherit file="/_sidebar.mako"/>

<%def name="manifest()">/cache.manifest</%def>

<%def name="title()">Offline</%def>

<%def name="body()">
<h1>Offline</h1>

% if request.registry.settings['template.offline.enabled']:
	<script>
		function set_progress_status(status, progress) {
			//console.log('set_progress_status', status, progress);
			var $progress_bar = $('.progress-bar');
			$progress_bar.removeClass('progress-bar-success').removeClass('progress-bar-danger').removeClass('progress-bar-warning').addClass('progress-bar-'+status);
			if (progress) {
				$progress_bar.attr('aria-valuenow', progress);
				$progress_bar.css('width',""+progress+"%");
			}
		};
		window.applicationCache.onchecking = function(checking) {
			// Check the cache.manifest
			//console.log('checking',checking);
			set_progress_status('warning', 0);
		};
		
		window.applicationCache.ondownloading = function(e,b) {
			// Starting download
			//console.log('downloading',e,b);
		}
		window.applicationCache.onprogress = function(e) {
			//console.log('progress', e);
			set_progress_status(null, (e.loaded/e.total)*100);
		}
		window.applicationCache.onupdateready = function(e) {
			// Done
			//console.log('updateready',e);
			set_progress_status('success', 100);
		}
		window.applicationCache.onnoupdate = function(e) {
			// Done, Nothing to update
			//console.log('noupdate', e);
			set_progress_status('success', 100);
		}
		window.applicationCache.oncached = function(e){
			//console.log('oncached', e);
		}
		window.applicationCache.onerror = function(e) {
			//set_progress_status('danger',100);
		}
		window.applicationCache.onobsolete = function(e) {
			//console.log('onobsolete', e);
		}
	</script>

	<div class="progress">
	<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
	  ##<span class="sr-only">60% Complete</span>
	</div>
	</div>
% else:
	Offline mode disabled in settings
% endif

</%def>