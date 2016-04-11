

    $(".comedians").on('click', function(){
      var selectedComedian = $(this).attr('value');
      $('.comedianInfo').addClass('visible');
      $(`.${selectedComedian}`).removeClass('visible');
      debugger
      // $('.close_button').show()
    });

    $('.comedianInfo').on( "click", function( event ) {
      $(this).addClass( "visible");
    });

// $('.comedianInfo').bind('clickoutside',function(){
//     $('.comedianInfo').addClass( "visible" );
// });
