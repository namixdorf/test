$( document ).ready(function() {
	if ($('div.marquee').length == 1) {
		var sliderUL = $('div.marquee').children("ul"),
	    	imgs = sliderUL.find('img'),
		  	// imgWidth = imgs[0].width,
	    	imgWidth = 736,
	    	imgsLeng = imgs.length,
	    	current = $('li.current').attr('id').split('_')[1],
	    	totalImgsWidth = imgWidth * imgsLeng
      
		
			$('.marquee_nav .button').on('click', function () {
	    		var direction = $(this).data('dir'),
	        	loc = imgWidth,
	    	    current = $('li.current').attr('id').split('_')[1];

	    		( direction === 'next' ) ? ++current : --current;
	    		if ( current === 0 ) {
	    	    current = 4;
			  		loc = totalImgsWidth - imgWidth;
			  		direction = 'next';
	      	} else if ( current - 1 === imgsLeng ) {
	            current = 1
	        		loc = 0;
	      	}
	        $('ul#indicator li').css('background-color', "#cccccc").removeClass('current');
	        var indicator = $('#position_' + current),
	            color = indicator.data('color')

	        indicator.css('background-color', color).addClass("current")
            
	      	transition(sliderUL, loc, direction);
		});

	  $(".marquee_indicator ul#indicator").find('li#position_1').on('click', function() {
	      var loc = 0,
	          color = $('.marquee_indicator ul li#position_1').data('color');
	      $('ul#indicator li').css('background-color', "#cccccc").removeClass('current')
	      transition(sliderUL, loc, "")
	      $('li#position_1').css("background-color", color).addClass('current')
	  });
	  $(".marquee_indicator ul#indicator").find('li#position_2').on('click', function() {
	      var loc = -736,
	          color = $('.marquee_indicator ul li#position_2').data('color');
	      $('ul#indicator li').css('background-color', "#cccccc").removeClass('current')
	      transition(sliderUL, loc, "")
	      $('li#position_2').css("background-color", color).addClass('current')
	  });
	  $(".marquee_indicator ul#indicator").find('li#position_3').on('click', function() {
	      var loc = -1472,
	          color = $('.marquee_indicator ul li#position_3').data('color');
	      $('ul#indicator li').css('background-color', "#cccccc").removeClass('current')
	      transition(sliderUL, loc, "")
	      $('li#position_3').css("background-color", color).addClass('current')
	  });
	  $(".marquee_indicator ul#indicator").find('li#position_4').on('click', function() {
	      var loc = -2208,
	          color = $('.marquee_indicator ul li#position_4').data('color');
	      $('ul#indicator li').css('background-color', "#cccccc").removeClass('current')
	      transition(sliderUL, loc, "")
	      $('li#position_4').css("background-color", color).addClass('current')
	  });

		function transition( container, loc, direction ) {
	  		var unit;

	  		if ( direction && loc !== 0 ) {
	    		unit = ( direction === 'next' ) ? '-=' : '+=';
	  		}
	  		container.animate({
	    		'margin-left': unit ? (unit + loc) : loc
	  		});
 	}
	}
});
