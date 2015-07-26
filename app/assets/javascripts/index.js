window.onload = function () {
  var cities = $('.cities li');

  $.each(cities, function() {
    $(this).click(function() {
      var city = $(this).data('city');

      $('.cities li').each(function () {
        $(this).removeClass('active');
      });

      $(this).addClass('active');
      
      $('.city-image').each(function() {
        if($(this).data('city') === city) {
          $(this).show();
        } else {
          $(this).hide();
        }
      });
    });
  });
 
}
