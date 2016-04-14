// used in events/index.html.erb view

  var festivalButton = $(".plan_festival_button");

  festivalButton.on('click', function(){
    festivalButton.removeClass("plan_festival_button--hide")
    festivalButton.addClass("close_button")
    $(".plan_my_festival_module").removeClass('visible');

    $('.close_button').on( "click", function(){
      $('.plan_my_festival_module').addClass( "visible");
      festivalButton.addClass("plan_festival_button--hide")
    });

    var shows = $(".notify");
    var numberOfShowsDisplay = $("#shows_selected");
    var event_id = ""
    var numberOfShows =0

    for (i =0; i < shows.length; i++){
      var show = shows[i];

      show.addEventListener("click", function(event){
        var event_id = event.target.dataset.eventId;
        var matching_checkbox = $('.festival_checkbox[data-event-id=' + event_id + ']')

        matching_checkbox.prop('checked', true);
        // event.attr('data-added-to-plan', true);


        numberOfShows++;
        if (numberOfShows === 1){
          numberOfShowsDisplay.text(numberOfShows + " show selected");
        }
        else {
          numberOfShowsDisplay.text(numberOfShows + " shows selected");
        };
      });
    };
  });


  








