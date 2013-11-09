/*
$(document).ready(function() {
  var container = document.querySelector('#masonry-container');
  var msnry = new Masonry( container, {
    // options
    isFitWidth: true,
    gutter: 10
    // columnWidth: 316,
    // itemSelector: '.item'
  });


});*/




$(window).load(function(){
	$('#masonry-container').masonry({
	  itemSelector: '.item',
          isFitWidth: true,
	  //columnWidth: 240,
          gutter: 20,
	  animationOptions: {
	    duration: 400
	  }
	})
});


