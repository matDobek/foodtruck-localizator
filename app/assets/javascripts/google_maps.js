$( document ).ready(function(){
  foodtrucks =$("#foodtrucks").data("foodtrucks")
  handler = Gmaps.build('Google');
  handler.buildMap({ internal: { id: 'map' } }, function(){
    markers = handler.addMarkers(eval(foodtrucks));
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
  });
});
