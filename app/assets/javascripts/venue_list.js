var day1Shows;
var day2Shows;
var day3Shows;
var venueInfo;

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
      var data = JSON.parse(the_request.responseText);
      console.log(data);
      for (var item in data) {
    console.log(data[item]);
};

      console.log(data)
      debugger
      day1Shows = data['day1Shows'];
      day2Shows = data['day2Shows'];
      day3Shows = data['day3Shows'];
      venueInfo = data['venueInfo'];
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
    clicking_sidebar_triggers_request(venueID)
});
});

