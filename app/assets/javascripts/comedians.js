
var selectedComedian;
    $(".comedians").on('click', function(){
      console.log(this);
      selectedComedian = $(this).attr('id');
      $(`.${selectedComedian}`).addClass('overlay');
      $(`.${selectedComedian}`).removeClass('visible');
      console.log($(`.${selectedComedian}`));
      // $('.close_button').show()
    });

    $('.close_button').on( "click", function(){
      $('.comedianInfo').removeClass( "overlay");
       $('.comedianInfo').addClass( "visible");
    });

// $('.comedianInfo').bind('clickoutside',function(){
//     $('.comedianInfo').addClass( "visible" );
// });
