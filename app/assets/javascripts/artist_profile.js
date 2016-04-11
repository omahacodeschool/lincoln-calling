// used in artist views: index, index_comedians, search

// functionality for artist profile/searching pages/profiles
if(document.getElementsByClassName("artistInfo").length !== 0){
  
  // checks the value of the selected comedian class. sets that to selectedArist variable.
  //finds the div with an ID identical to selectedArtist. Adds overlay class to div. Also makes it visible by removing visible class.
  $('.artists').on('click', function(){
    console.log(this);
    var selectedArtist = $(this).attr('value');
    $(`#${selectedArtist}`).removeClass('visible');
    $(`#${selectedArtist}`).addClass('overlay');
    console.log($(`#${selectedArtist}`));
  });
  // removes the artist profile overlay popup window and sets the information to a hidden state.
  $('.close_button').on( "click", function(){
    $('.artistInfo').removeClass( "overlay");
     $('.artistInfo').addClass( "visible");
  });
};