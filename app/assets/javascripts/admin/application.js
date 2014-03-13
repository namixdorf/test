//= require includes/bootstrap.min.js


$(function() {
   // sortable lists
	$('.sortable-list,*[class$=sortable]').sortable({
		update: function() {
			var list = $(this);
			$.ajax({ type: 'post', data: list.sortable('serialize'), 
          dataType: 'script',
          complete: function(request) { list.children().effect('highlight'); },
          url: list.attr('data-url') })
		}
	})

  var filters = $('select.sort-filter');
  filters.each(function() {
    $(this).change(function() {
      $.mobile.changePage( $(this).attr('data-url'), {
      	data: filters.serialize(),
      	reloadPage: true
      });
    });
  });
	
	// inline help for form fields using twitter bootstrap control_group helpers
	$('*[rel="tooltip"]').tooltip();
	
	$('input[data-help]').each(function() {
		var help = $(this).attr('data-help').trim();
		if(help != '')
			$(this).popover({ trigger:'focus', content:help });
	});
	
	// clicking a table row triggers the primary button action (if primary button is present)
	$('tbody tr td.actions .btn-primary').each(function() {
		var b = $(this);
		b.parent().siblings().click(function() { location.href = b.attr('href'); });
	});
    
	$('.datepicker').datepicker({ dateFormat: 'yy-mm-dd' });    
});

