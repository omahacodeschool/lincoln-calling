$(".day_link").on('click', function(){
  $('.day_link--selected').removeClass('day_link--selected');
  $(this).addClass('day_link--selected')
  event.preventDefault();
});


if(document.getElementsByClassName("bands__headliners").length !== 0 || document.getElementsByClassName("home_emails").length !== 0){
    $(".day_link").on('click', function(){
      var dayDisplay = $(this).attr('value');
      $( ".shows" ).hide();
      $( `.${dayDisplay}` ).show();
      event.preventDefault();
    });
};