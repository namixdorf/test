$(function(){
	var curtab = window.location.href;
	curtab = curtab.split("#");
	curtab = "#" + curtab[1];
	$('.tab_content').hide();
	$('#tab_navigation a').bind('click', function(e){
		$('.current_tab').removeClass('current_tab');
		$('.tab_content:visible').hide();
		$(this.hash).show();
		$(this).parent().addClass('current_tab');
		e.preventDefault();
	})
	if (curtab == "#undefined") {
		$('#tab_navigation a').filter(":first").click();
	} else {
		$(curtab+"_image a").click()
	}

});
