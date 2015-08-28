$(document).ready(function () {
  var cities = $('.cities li');

  $.each(cities, function() {
    $(this).click(function() {
      var city = $(this).data('city');

      $('.cities li').each(function () {
        $(this).removeClass('active');
      });
      $(this).addClass('active');
 
      $('.carousel-inner .item').each(function() {
        if($(this).data('city') === city) {
          $(this).addClass('active')
        } else {
          $(this).removeClass('active');
        }
      });
     
      $('.carousel-indicators li').each(function() {
        if($(this).data('city') === city) {
          $(this).addClass('active')
        } else {
          $(this).removeClass('active');
        }
      });
    });
  });
 
});
