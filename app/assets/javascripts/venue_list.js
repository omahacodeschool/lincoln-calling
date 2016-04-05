
 function createSidebarLi(json){
  return ("<li style='list-style: none;' class='venues__text'><a value=" + `${json.id}` + " class='venueMarker' >" + json.marker_title + "<div class='teardrop__color teardrop col-2 no_padding'>I</div></a></li>");
};

function bindLiToMarker($li, marker){
  $li.on('click', function(){
    handler.getMap().setZoom(14);
    marker.setMap(handler.getMap()); //because clusterer removes map property from marker
    marker.panTo();
    google.maps.event.trigger(marker.getServiceObject(), 'click');
  })
};

function createSidebar(json_array){
  _.each(json_array, function(json){
    var $li = $( createSidebarLi(json) );
    $li.appendTo('#sidebar_container');
    bindLiToMarker($li, json.marker);
  });
};

function clicking_sidebar_triggers_request(venue_id){
  
  var request = new XMLHttpRequest();
  request.open("GET", "http://localhost:3000/venues/" + venue_id);
  // a request to the server running through http-server

  request.addEventListener("load", function(event){
      var the_request = event.target;
      var data = the_request.responseText;
      alert(data);
      // responseText is a built-in method for request objects.
  });
  request.send();
};

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
    var venueID = $(this).attr("value");
    var day1Shows;
    var day2Shows;
    var day3Shows;
    var venueInfo;
    clicking_sidebar_triggers_request(venueID)
});
});



