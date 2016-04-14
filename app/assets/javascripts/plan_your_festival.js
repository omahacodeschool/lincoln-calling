// used in events/index.html.erb view
// jQuery(document).ready(function(){  
//   var parent = document.getElementById("right");

  var festivalButton = $(".plan_festival_button");

  festivalButton.on('click', function(){
    festivalButton.removeClass("plan_festival_button--hide")
    festivalButton.addClass("close_button")

    $(".plan_my_festival_module").removeClass('visible');
    // $(".plan_my_festival_module").addClass('overlay');

    $('.close_button').on( "click", function(){
      // $('.plan_my_festival_module').removeClass( "overlay");
      $('.plan_my_festival_module').addClass( "visible");
    });
  });


  var shows = $(".show");
  var numberOfShowsDisplay = $("#shows_selected");
  var numberOfShows =0
  var event_id = ""

  for (i =0; i < shows.length; i++){
    var show = shows[i];

    show.addEventListener("click", function(event){
      // add event_id to form;
      numberOfShows++;
      numberOfShowsDisplay.innerHTML = numberOfShows + "shows selected";

    });
  };

// });







