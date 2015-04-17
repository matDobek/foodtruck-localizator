handler = Gmaps.build('Google');
handler.buildMap({
  internal: {
  id: 'map',
  }
});
//function(){
  //markers = handler.addMarkers([
    //{
    //"lat": 0,
    //"lng": 0,
    //"picture": {
      //"url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
      //"width":  36,
      //"height": 36
    //},
  //}
  //]);
  //handler.bounds.extendWith(markers);
  //handler.fitMapToBounds();
  //}
//);

//var customMapStyle = [{
  //"featureType":"all",
  //"elementType":"labels.text.fill",
  //"stylers":[{"saturation":36},
    //{"color":"#000000"},
    //{"lightness":40}]},{
      //"featureType":"all",
      //"elementType":"labels.text.stroke",
      //"stylers":[{"visibility":"on"},
        //{"color":"#000000"},
        //{"lightness":16}]},
        //{"featureType":"all",
          //"elementType":"labels.icon",
          //"stylers":[{"visibility":"off"}]},
          //{"featureType":"administrative",
            //"elementType":"geometry.fill",
            //"stylers":[{"color":"#000000"},
              //{"lightness":20}]},
              //{"featureType":"administrative",
                //"elementType":"geometry.stroke",
                //"stylers":[{"color":"#000000"},{
                  //"lightness":17},{"weight":1.2}]},{
                    //"featureType":"landscape","elementType":"geometry",
                    //"stylers":[{"color":"#000000"},{
                      //"lightness":20}]},{
                        //"featureType":"poi","elementType":"geometry","stylers":
                          //[{"color":"#000000"},{"lightness":21}]},{
                          //"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
