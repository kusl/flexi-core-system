
// Ancor Links 'scrollTo' -----------------------------------------------------

$(document).ready(function() {
    // Hijack any links that are clicked
    // if they start with '#' then scroll to them smoothly and prevent the following of the actual link-page change
	$('a[href^="#"]').on('click', function(){
        var
        href  = $(this).prop('href'),
        $hash = $(href.substr(href.indexOf('#')));
        console.log($hash);
        scrollTo($hash, -50);  // HACK: Hard coded offset from top. Solution could be to Use jQuery to aquire this directly from a css property
        return false;
    });
	
	$(window).on('resize', on_resize);
});

function scrollTo ($el, offset) {
    $('html, body').animate({
        scrollTop: $el.offset().top + offset
    }, 500);
};

function on_resize() {
	$('[data-spy="scroll"]').each(function () {
		var $spy = $(this).scrollspy('refresh')
	});
}

// Cache Progress -------------------------------------------------------------

progressbar = {
	init: function() {
		window.applicationCache.onchecking = function(checking) {
			// Check the cache.manifest
			//console.log('checking',checking);
			progressbar.set_status('warning', 0);
		};
		window.applicationCache.ondownloading = function(e,b) {
			// Starting download
			//console.log('downloading',e,b);
			$('#modalProgress').modal();
		};
		window.applicationCache.onprogress = function(e) {
			//console.log('progress', e);
			progressbar.set_status(null, (e.loaded/e.total)*100);
		};
		window.applicationCache.onupdateready = function(e) {
			// Done
			//console.log('updateready',e);
			progressbar.set_status('success', 100);
		};
		window.applicationCache.onnoupdate = function(e) {
			// Done, Nothing to update
			//console.log('noupdate', e);
			progressbar.set_status('success', 100);
		};
		window.applicationCache.oncached = function(e){
			//console.log('oncached', e);
		};
		window.applicationCache.onerror = function(e) {
			progressbar.set_status('danger',100);
		};
		window.applicationCache.onobsolete = function(e) {
			//console.log('onobsolete', e);
		};
	},
	set_status: function(status, progress) {
		//console.log('set_progress_status', status, progress);
		var $progress_bar = $('#progress-bar');
		$progress_bar.removeClass('progress-bar-success').removeClass('progress-bar-danger').removeClass('progress-bar-warning').addClass('progress-bar-'+status);
		if (progress) {
			var progress_string = ""+progress+"%";
			$progress_bar.attr('aria-valuenow', progress);
			$progress_bar.css('width',progress_string);
			$('.progress-bar sr-only').html(progress_string+" Complete");
		}
	}
};
progressbar.init();
