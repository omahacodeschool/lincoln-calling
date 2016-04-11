

    $(".comedians").on('click', function(){
      var selectedComedian = $(this).attr('value');
      $('.comedianInfo').removeClass('overlay');
      $('.comedianInfo').addClass('visible');
      $(`.${selectedComedian}`).addClass('overlay');
      $(`.${selectedComedian}`).removeClass('visible');
      // $('.close_button').show()
    });

    $('.close_button').on( "click", function( event ) {
      $('.comedianInfo').removeClass( "overlay");
       $('.comedianInfo').addClass( "visible");
    });

// $('.comedianInfo').bind('clickoutside',function(){
//     $('.comedianInfo').addClass( "visible" );
// });
