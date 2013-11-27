# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$ ->
#	$('#pins').imagesLoaded ->
#		$('#pins').masonry
#			itemSelector: '.box'
#			isFitWidth: true

$ ->
	$('#pins').imagesLoaded ->
	    $('#pins').masonry 
	    	itemSelector: ".box" # Thats my Masonry
	    	isFitWidth: true
	    	
	if $('.pagination').length # Thats for the Endless Scrolling
	    $(window).scroll ->
	        url = $('.pagination .next_page a').attr('href')
	        if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
	            # What to do at the bottom of the page
	            $('.pagination').text("Fetching more Clips...")
	            $.getScript(url)
	        $(window).scroll()