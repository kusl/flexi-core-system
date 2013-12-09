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
COOKIE_OPTIONS = 'options';

// Settings -------------------------------------------------------------------

$.cookie.json = true;

// Options (Persisted by cookie)
var options = $.cookie(COOKIE_OPTIONS) || {
	'extra_content': false
};


// Ancor Links 'scrollTo' -----------------------------------------------------

$(document).ready(function() {
    // Hijack any links that are clicked
    // if they start with '#' then scroll to them smoothly and prevent the following of the actual link-page change
	$('a[href^="#"]').on('click', function(){
        var
        href  = $(this).prop('href'),
        $hash = $(href.substr(href.indexOf('#')));
        //console.log($hash);
        scrollTo($hash, -70);  // HACK: Hard coded offset from top. Solution could be to Use jQuery to aquire this directly from a css property
        return false;
    });
	
	set_extra_content(options['extra_content']);
	
	// Init events
	var supportsOrientationChange = "onorientationchange" in window,
	orientationEvent = supportsOrientationChange ? "orientationchange" : "resize";
	$(window).on(orientationEvent, refresh_scrollspy);
	
	$(document).on('keydown', function(e) {
		switch (e.which) {
			case KEYCODE.S        : toggle_extra_content(); break;
		}
		if (e.which in KEYCODE) {
			e.preventDefault();
		}
	});

	$('.data_target').each(function () {
		var $data_target = $(this);
		generate_table($data_target, $data_target.attr('data-source'));
	});
	
});

function scrollTo ($el, offset) {
	$('html, body').animate({
		scrollTop: $el.offset().top + offset
	}, 500);
};

function refresh_scrollspy() {
	//console.log('refresh scrollspy');
	//$('body').scrollspy({ target: '.bs-sidebar', offset: 120});
	// Broken! - refresh blows away the 'offset'
	// So we can either have good offset that breaks on rotate
	// or bad offset but consistent when rotated.
	// I'll opt for 'ok until rotate'
	//$('[data-spy="scroll"]').each(function () {
	//	var $spy = $(this).scrollspy('refresh');
	//});
}

// Extra Content

function toggle_extra_content() {
	var extra_content_enabled = $('body').hasClass(CLASS_CONTENT_EXTRA);
	set_extra_content(!extra_content_enabled);
}
function set_extra_content(extra_content) {
	console.log("content_extra="+extra_content);
	if (extra_content) {$('body').addClass   (CLASS_CONTENT_EXTRA);}
	else               {$('body').removeClass(CLASS_CONTENT_EXTRA);}
	refresh_scrollspy();
	options['extra_content'] = extra_content;
	update_options();
}

function update_options() {
	// Would be better to hook into __set__ like python to trigger a cookie set
	$.cookie(COOKIE_OPTIONS, options, {path: '/'})
}



// Cache Progress -------------------------------------------------------------

progressbar = {
	init: function() {
		window.applicationCache.onchecking = function(checking) { // Check the cache.manifest
			//console.log('checking',checking);
			progressbar.set_offline_status(true);  // If there is checking of the cache.manifest, we are in offline mode
			progressbar.set_status('warning', 0);
		};
		window.applicationCache.ondownloading = function(e) { // Starting download
			//console.log('downloading',e);
			$('#modalProgress').modal();
		};
		window.applicationCache.onprogress = function(e) {
			console.log('progress', e);
			progressbar.set_status(null, (e.loaded/e.total)*100);
		};
		window.applicationCache.onupdateready = function(e) { // Done
			//console.log('updateready',e);
			progressbar.set_status('success', 100);
		};
		window.applicationCache.onnoupdate = function(e) { // Done, Nothing to update
			//console.log('noupdate', e);
			progressbar.set_status('success', 100);
		};
		window.applicationCache.oncached = function(e){
			//console.log('oncached', e);
		};
		window.applicationCache.onerror = function(e) {
			//console.log('error', e);
			progressbar.set_status('danger',100);
		};
		window.applicationCache.onobsolete = function(e) {
			//console.log('onobsolete', e);
			progressbar.set_offline_status(false);
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
