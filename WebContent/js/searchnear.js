var map;
var list="";
var z=8;
var markers = [];
var myCenter=new google.maps.LatLng(51.508742,-0.120850);
var lat=[];
var lng=[];

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:z,
  disableDefaultUI:true, 
   /* panControl:true,
    zoomControl:true,
    mapTypeControl:true,
    scaleControl:true,
    streetViewControl:true,
    overviewMapControl:true,
    rotateControl:true,  */ 
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

      map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
//markersArray.push(marker);
 /* google.maps.event.addListener(map, 'click', function(event) {
    
         placeMarker(event.latLng);
      
  });*/
    
    var input = document.getElementById('sinput');
  var searchBox = new google.maps.places.SearchBox(input);
    
    map.addListener('bounds_changed', function() {
    searchBox.setBounds(map.getBounds());
      
  });
    
    searchBox.addListener('places_changed', function() {
    var places = searchBox.getPlaces();
        
    if (places.length == 0) {
      return;
    }
        
        myCenter=places[0].geometry.location;
        initialize();

    // Clear out the old markers.
   /* markers.forEach(function(marker) {
      marker.setMap(null);
    });
    markers = [];*/

    // For each place, get the icon, name and location.
  /* var bounds = new google.maps.LatLngBounds();
    places.forEach(function(place) {
      var icon = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      markers.push(new google.maps.Marker({
        map: map,
        icon: icon,
        title: place.name,
        position: place.geometry.location
      }));
        
      if (place.geometry.viewport) {
        // Only geocodes have viewport.
        bounds.union(place.geometry.viewport);
      } else {
        bounds.extend(place.geometry.location);
      }
        
    });
    map.fitBounds(bounds);*/
  });
    
        for(i=1;i<6;i++)
    {
    var center1=new google.maps.LatLng(myCenter.lat()+i/4,myCenter.lng()+i/4)
        placeMarker(center1);
    }

}

function placeMarker(location) {
    z=map.getZoom();
   /* myCenter=new google.maps.LatLng(location.lat(),location.lng());
    z=map.getZoom();
    initialize();*/

  var marker = new google.maps.Marker({
    position: location,
    map: map,
  });
    // if (marker != null) {
       //                 marker.removeAll();
                //    }
    //map.clearOverlays();
  /*var infowindow = new google.maps.InfoWindow({
    content: 'Latitude: ' + location.lat() + '<br>Longitude: ' + location.lng()
  });
    
  infowindow.open(map,marker);*/
    
     list+=location+"</br>";
        document.getElementById("list").innerHTML=list;
    

       
}

google.maps.event.addDomListener(window, 'load', initialize);