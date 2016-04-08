
if ( document.getElementsByClassName("map__image").length !== 0){
  //Used Google Maps for Rails (https://github.com/apneadiving/Google-Maps-for-Rails) Gemfile for built-in maps API 

  // Variables will store data retrieved from XHR requests. 
  //Defined here so that tehy can be utilized throughout any interaction on the page.
  var day1Shows;
  var day2Shows;
  var day3Shows;
  var venueInfo;
  var dayDisplay = "day1Shows"

  //function updates the Venue information container. 
  //This method is called whenever an instance of the venueMarker class is clicked see: >> $(".venueMarker").on('click', function(){)
  //
  //Information this function provides on the main page: (For Venue) Name, Website, Address, Image, and Bio
  function loadVenueInfo(venueData){
    for (var key in venueData){
    console.log(key + " -> " + venueData[key]);   
      var name = key;
      var moreVenueData = venueData[key];
      var website = moreVenueData["website"];
      var address = moreVenueData["address"];
      var image = moreVenueData["image"]["img"]["url"];
      var info = moreVenueData["info"];
  }
    document.getElementById("venueName").innerHTML = name;
    document.getElementById("venueWebsite").innerHTML = website;
    document.getElementById("venueWebsite").src = website;
    document.getElementById("venueAddress").innerHTML = address;
    document.getElementById("venueImage").src = image;
    document.getElementById("venueBio").innerHTML = info;
  };

  //iterates through array of event data created from event listener
  //for each element in the array, it passes the hash values for the artist, start time, and end time into a method to create new divs.
  function loadDayEventInfo(events, day){
    console.log("NEW DAY");
    var events = events;
    var day = day;
    for (var key in events){
      console.log(key + " -> " + events[key]);
      var artist = events[key]["artist"];
      var start = events[key]["start_time"];
      var end = events[key]["end_time"];
      createArtistDiv(artist, start, end, day)
    };
  };

  // method creates new divs in the concert div. The first div is for the artist who owns the event. the second div is for the start/end times of the event.
  function createArtistDiv(artist, start, end, day){
    jQuery('<div/>', {class: 'concert__name shows ' + day, text: artist}).hide().appendTo('.concert');
    jQuery('<div/>', {class: 'concert__time  shows ' + day, text: `${start}  - ${end}`}).hide().appendTo('.concert');
    
  };
  //function used to create list element and icon element for every google maps location marker. Also sets the value of the a tag to each venue's id for later use.
  function createSidebarLi(json){
    return ("<li style='list-style: none;' class='venues__text'><a value=" + `${json.id}` + " class='venueMarker' >" + json.marker_title + "<div class='teardrop__color teardrop col-2 no_padding'><img class='map__markers' src=" + json.icon + "></img></div></a></li>");
  };

  //function used to send XHR requests to the server. Gathers event data for Venue, as well as event information.
  function clicking_sidebar_triggers_request(venue_id){
    var request = new XMLHttpRequest();
    request.open("GET", "http://localhost:3000/venues/" + venue_id);
    // a request to the server running through http-server

    request.addEventListener("load", function(event){
        var the_request = event.target;
        var data = JSON.parse(the_request.responseText);
        day1Shows = JSON.parse(data['day1Shows']);
        day2Shows = JSON.parse(data['day2Shows']);
        day3Shows = JSON.parse(data['day3Shows']);
        venueInfo = JSON.parse(data['venueData']);
        loadVenueInfo(venueInfo)
        loadDayEventInfo(day1Shows, "day1Shows")
        loadDayEventInfo(day2Shows, "day2Shows")
        loadDayEventInfo(day3Shows, "day3Shows")
        $( `.${dayDisplay}` ).show();
        debugger
        // responseText is a built-in method for request objects.
    });
    request.send();
  };

  function bindLiToMarker($li, marker){
    $li.on('click', function(){
      handler.getMap().setZoom(18);
      marker.setMap(handler.getMap()); //because clusterer removes map property from marker
      marker.panTo();
      google.maps.event.trigger(marker.getServiceObject(), 'click');
    })
      $(".marker").on('click', function(){
      var venueID = $(this).children('img').attr("value");
      clicking_sidebar_triggers_request(venueID)
      event.preventDefault();
    });

  };

  //creates interactive sidebar for each venue marker on the map
  function createSidebar(json_array){
    _.each(json_array, function(json){
      var $li = $( createSidebarLi(json) );
      $li.appendTo('#sidebar_container');
      bindLiToMarker($li, json.marker);
    });
  };

  //creates google map with a marker for each venue in the variable json_array (passed from the server over the html page)
  handler = Gmaps.build('Google');
  handler.buildMap({ internal: {id: 'sidebar_builder'}}, function(){
    var markers = handler.addMarkers(json_array);
    _.each(json_array, function(json, index){
      json.marker = markers[index];
    });


    createSidebar(json_array);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();

    $(".venueMarker").on('click', function(){
      $( ".concert" ).empty();
      var venueID = $(this).attr("value");
      clicking_sidebar_triggers_request(venueID)
      event.preventDefault();
    });

    $('body').on('click','img',function(){
      debugger
      var venueID = $(this).attr("value");
      clicking_sidebar_triggers_request(venueID)
      event.preventDefault();
    });


    //shows or displays event data if instance of element's class is clicked.
    $(".day_link").on('click', function(){
      dayDisplay = $(this).attr("value");
      var daysCollection;
      $( ".shows" ).hide();
      $( `.${dayDisplay}` ).show();
      event.preventDefault();
    });
  });
};
