// used in events/index.html.erb view

  var festivalButton = $(".plan_festival_button");

  // this only works one time per page load. need it to work infinite times
  festivalButton.on('click', function(){
    festivalButton.removeClass("plan_festival_button--hide")
    festivalButton.addClass("close_button")
    $(".plan_my_festival_module").removeClass('visible');

    $('.close_button').on( "click", function(){
      $('.plan_my_festival_module').addClass( "visible");
      festivalButton.addClass("plan_festival_button--hide")
      festivalButton.removeClass("close_button")

    });

    var shows = $(".notify");
    var numberOfShowsDisplay = $("#shows_selected");
    var event_id = ""
    var numberOfShows =0

    for (i =0; i < shows.length; i++){
      var show = shows[i];

      // you should only be able to click this once you've clicked the festival button, but currently this is working even if a user hasn't clicked the festival button
      show.addEventListener("click", function(event){
        var event_id = event.target.dataset.eventId;
        var matching_checkbox = $('.festival_checkbox[data-event-id=' + event_id + ']')

        // make this toggle between true & false
        matching_checkbox.prop('checked', (matching_checkbox.prop.checked === "true") ? "false" : "true");


        event.target.setAttribute("data-added-to-plan", (event.target.dataset.addedToPlan === "true") ? "false" : "true");

        // change the number of shows when added or removing event
        if (event.target.dataset.addedToPlan === "true"){
          numberOfShows++;
        }
        else{
          numberOfShows--;
        }

        if (numberOfShows === 1){
          numberOfShowsDisplay.text(numberOfShows + " show selected");
        }
        else {
          numberOfShowsDisplay.text(numberOfShows + " shows selected");
        };
      });
    };
  });


  








