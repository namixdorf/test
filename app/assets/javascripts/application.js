//= require_self
//= require slider
//= require rss_feed
//= require lock_screen
//= require quotes
//= require tabs
//= require includes/easybox-1.2.js
//= require includes/flowplayer-3.2.13.min


(function($) {
	
  var lightbox;
  $.lightbox = lightbox = {
		init: function() {
			$('#lightbox-close').click(function() { $.lightbox.close(); return false; });
		},
		clear: function() {
			
			var html = $('#lightbox-content *[data-source]');
			var video = $('#lightbox-content video');
			if(video.length > 0) {
				video[0].pause();
			}
			if(html.length > 0) {
				html.detach().appendTo($(html.attr('data-source')));
			}
			$('#lightbox-content').html('');
		},
    update: function(html,klass) {
			$.lightbox.clear();
			if(typeof(html.detach) == 'function') {
				html.attr('data-source', '#'+html.parent().attr('id')).detach().appendTo($('#lightbox-content'));
			}
			else {
				$('#lightbox-content').html(html);
			}
			if(klass) { $('#easyContainer').addClass(klass); }
		},
    show:   function() { $.easybox('#lightbox', 0, { maxScreenFill:0, overlayOpacity:0.4, hideBottom:true, noNavigation:true, resizeEasing:'swing' }); },
    close:  function() { 
			$.easybox.close(); 
			$('#easyContainer').removeClass();
			$.lightbox.update('');
		},
    present: function(html,klass) { 
			$.lightbox.update(html,klass);
			lightbox.show();	
		}
  };
})(jQuery);

$(function() {

	$.lightbox.init();
	
	
	// function playVideo(url) {
	//  
	//   $.lightbox.present(embed);
	//   
	// }
	
	
});