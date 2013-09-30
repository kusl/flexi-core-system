
function scrollTo ($el, offset) {
    $('html, body').animate({
        scrollTop: $el.offset().top + offset
    }, 500);
} 

// Init
$(document).ready(function() {
    // Hijack any links that are clicked
    // if they start with '#' then scroll to them smoothly and prevent the following of the actual link-page change
	$('a[href^="#"]').on('click', function(){
        var
        href  = $(this).prop('href'),
        $hash = $(href.substr(href.indexOf('#')));
        console.log($hash);
        scrollTo($hash, -50);
        return false;
    });
});
