
if ( document.getElementsByClassName("map__image").length !== 0){
  //Used Google Maps for Rails (https://github.com/apneadiving/Google-Maps-for-Rails) Gemfile for built-in maps API 

  // Variables will store data retrieved from XHR requests. 
  //Defined here so that tehy can be utilized throughout any interaction on the page.
  var venueID;
  var dayDisplay = "day1"

  //function used to create list element and icon element for every google maps location marker. Also sets the value of the a tag to each venue's id for later use.
  function createSidebarLi(json){
    return ("<label value=" + `${json.id}` + " class='venueMarker'><li style='list-style: none;' class='venues__text'>" + json.marker_title + "<div class='teardrop__color teardrop col-2 no_padding'><img class='map__markers' src=" + json.icon + "></img></div></li></label>");
  };


  function bindLiToMarker($li, marker){
    $li.on('click', function(){
      handler.getMap().setZoom(18);
      marker.setMap(handler.getMap()); //because clusterer removes map property from marker
      marker.panTo();
      google.maps.event.trigger(marker.getServiceObject(), 'click');
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

  function create_markers(json_array){
    var markers = [];
      for (i = 0; i < json_array.length; i++){
        var marker = handler.addMarker(json_array[i]);
        marker.serviceObject.set('class', 'venueMarker');
        marker.serviceObject.set('value', json_array[i].id);
        google.maps.event.addListener(marker.serviceObject, "click", function(){
          $( ".concert" ).empty();
          clicking_sidebar_triggers_request(marker.serviceObject.value);
        });
      markers.push(marker)
      };
    return markers
  };

  //creates google map with a marker for each venue in the variable json_array (passed from the server over the html page)
  handler = Gmaps.build('Google');
  handler.buildMap({ internal: {id: 'sidebar_builder'}}, function(){

    // var markers = create_markers(json_array);
    var markers = handler.addMarkers(json_array);
    _.each(json_array, function(json, index){
      json.marker = markers[index];
    });

    createSidebar(json_array);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();

    $(".venueMarker").on('click', function(){
      venueID = $(this).attr("value");
      $(".venueMarker").children().removeClass("venues__text--selected")
      $(this).children().addClass("venues__text--selected")
      $('.venueInfo').hide()
      $('.shows').hide();
      $(".venueInfo").filter(`.${venueID}`).show();
      $(`.${venueID}`).filter(`.${dayDisplay}`).show();
      event.preventDefault();
    });

    //shows or displays event data if instance of element's class is clicked.
    $(".day_link").on('click', function(){
      dayDisplay = $(this).attr("value");
      $('.shows').hide();
      $(`.${venueID}`).filter(`.${dayDisplay}`).show()
    });
  });
};
