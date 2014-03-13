if ($('.quote').length > 0){
	var quotes = $.parseJSON($('#quotes').html()),
			quote_divs = $('.quote');

	for(
    var j, x, i = quotes.length; i;
    j = parseInt(Math.random() * i),
    x = quotes[--i], quotes[i] = quotes[j], quotes[j] = x
  );

	quote_divs.each(function(){
		quote = quotes.shift()
		text = quote.text
		author = quote.author
		$(this).empty();
		$(this).append("&ldquo;" + text + "&rdquo;<br/>-" + author )
	})
}

function playVideo(url) {
  embed = '<div class="video-720" style=" height: 420px;"><a href="'+url+'" id="video-lightbox" class="flowplayer"></a></div>';
  $.lightbox.present(embed);
  flowplayer('video-lightbox', "/assets/flowplayer-3.2.18.swf", { clip:  { autoBuffering: true, autoPlay: false }, plugins: { controls: { url: '/assets/flowplayer.controls-3.2.16.swf' } } });
}


$("#video_refresh").click(function(event) {
	$('.inspired_video').each(function(){
		video = videos.shift()
		hashcode = video.hashcode
		image = video.image_name
		vid_id = video.id
		filename = video.mp4_file_name
		$(this).empty();
		$(this).append("<div class='quote_container'><div class='quote_text'><a href='#" + hashcode + "' class='lightboxed-video'><img src='/content/thumbnails/" + image +"' /></a></div></div>")
		$('#lightboxed_videos').append("<div class='video_container' id='" + hashcode + "'><div id='" + hashcode + "-video' data-video='/content/videos/"+ vid_id +"/" + filename + "'></div></div>")
		videos.push(video);
	});
	event.preventDefault();
	$('.lightboxed-video').on('click', function(e) {
		e.preventDefault();

		var hash = $(this).attr('href');
		var video_container = $(hash);
		var placeholder = video_container.find(hash+"-video");
		var mp4 = placeholder.attr('data-video');
		playVideo(mp4)
	});
});

if ($('.inspired_video').length > 0){
	var videos = $.parseJSON($('#hidden_videos').html());
	$(".inspired_row").attr("page", "1");
	for(
    var j, x, i = videos.length; i;
    j = parseInt(Math.random() * i),
    x = videos[--i], videos[i] = videos[j], videos[j] = x
  );
	$("#video_refresh").click();
};
