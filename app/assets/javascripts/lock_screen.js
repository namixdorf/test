$('#slider_button').on("click", function(e){
    e.preventDefault();
    $('img#get_started_text').hide();
    $('#slider_button').animate({left: "+=200"}, {complete:function(){window.location = "/categories.html"}});
});
