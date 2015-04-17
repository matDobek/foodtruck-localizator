$( document ).ready(function(){
foodtrucks =$("#foodtrucks").data("foodtrucks")
handler = Gmaps.build('Google');
handler.buildMap({
  provider: {
    styles: customMapStyle,
    zoom: 1
  },
  internal: {
    id: 'map'
  }
},
function(){
  debugger
  markers = handler.addMarkers(foodtrucks);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
});
                var customMapStyle = [{
                  "featureType":"all",
                  "elementType":"labels.text.fill",
                  "stylers":[{"saturation":36},
                    {"color":"#000000"},
    {"lightness":40}]},{
      "featureType":"all",
      "elementType":"labels.text.stroke",
      "stylers":[{"visibility":"on"},
        {"color":"#000000"},
        {"lightness":16}]},
        {"featureType":"all",
          "elementType":"labels.icon",
          "stylers":[{"visibility":"off"}]},
          {"featureType":"administrative",
            "elementType":"geometry.fill",
            "stylers":[{"color":"#000000"},
              {"lightness":20}]},
              {"featureType":"administrative",
                "elementType":"geometry.stroke",
                "stylers":[{"color":"#000000"},{
                  "lightness":17},{"weight":1.2}]},{
                    "featureType":"landscape","elementType":"geometry",
                    "stylers":[{"color":"#000000"},{
                      "lightness":20}]},{
                        "featureType":"poi","elementType":"geometry","stylers":
                          [{"color":"#000000"},{"lightness":21}]},{
                          "featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
