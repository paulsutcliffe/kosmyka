$(document).ready(function() {
  parallax_margin();
});

$(window).resize(function() {
  parallax_margin();
});


function parallax_margin() {
  h_height = $('.navbar-fluid-top').height();
  p_height = $('#parallaxContainer').height();
  content_margin = p_height - h_height;
  $('#content-middle').css('margin-top', content_margin);
}
