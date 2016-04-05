
 function createSidebarLi(json){
  return ("<li style='list-style: none;' class='venues__text'><a class='venueMarker'>" + json.marker_title + "<div class='teardrop__color teardrop col-2 no_padding'>I</a></div></li>");
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

handler = Gmaps.build('Google');
handler.buildMap({ internal: {id: 'sidebar_builder'}}, function(){
  var markers = handler.addMarkers(json_array);

  _.each(json_array, function(json, index){
    json.marker = markers[index];
  });

  createSidebar(json_array);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});

