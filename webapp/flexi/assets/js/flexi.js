// Constants

KEYCODE = {
	BACKSPACE: 8,
	ENTER    :13,
	ESCAPE   :27,
	LEFT     :37,
	RIGHT    :39,
	SPACE    :32,
	S        :83,
};

CLASS_CONTENT_EXTRA = 'extra_visible';

// Ancor Links 'scrollTo' -----------------------------------------------------

$(document).ready(function() {
    // Hijack any links that are clicked
    // if they start with '#' then scroll to them smoothly and prevent the following of the actual link-page change
	$('a[href^="#"]').on('click', function(){
        var
        href  = $(this).prop('href'),
        $hash = $(href.substr(href.indexOf('#')));
        console.log($hash);
        scrollTo($hash, -70);  // HACK: Hard coded offset from top. Solution could be to Use jQuery to aquire this directly from a css property
        return false;
    });
	
	$(window).on('resize', refresh_scrollspy);
	
	$(document).on('keydown', function(e) {
		switch (e.which) {
			case KEYCODE.S        : toggle_extra_content(); break;
		}
		if (e.which in KEYCODE) {
			e.preventDefault();
		}
	});

});

function scrollTo ($el, offset) {
    $('html, body').animate({
        scrollTop: $el.offset().top + offset
    }, 500);
};

function refresh_scrollspy() {
	$('[data-spy="scroll"]').each(function () {
		var $spy = $(this).scrollspy('refresh')
	});
}

function toggle_extra_content() {
	var content_extra = $('body').hasClass(CLASS_CONTENT_EXTRA);
	console.log("content_extra="+content_extra);
	if (content_extra) {$('body').removeClass(CLASS_CONTENT_EXTRA);}
	else               {$('body').addClass   (CLASS_CONTENT_EXTRA);}
	refresh_scrollspy()
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
			progressbar.set_offline_status(true);
		};
		window.applicationCache.onnoupdate = function(e) {
			// Done, Nothing to update
			//console.log('noupdate', e);
			progressbar.set_status('success', 100);
			progressbar.set_offline_status(true);
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
	},
	set_offline_status: function(status) {
		if (status) {$('#status-offline').removeClass('hidden');}
		else        {$('#status-offline').addClass   ('hidden');}
	}
};
progressbar.init();
