    $(".day_link").on('click', function(){
      $('.day_link--selected').removeClass('day_link--selected');
      dayDisplay = $(this).addClass('day_link--selected')
      event.preventDefault();
    });
