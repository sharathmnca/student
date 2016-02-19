var map;
var list="";
var z=5;
var markers = [];
var myCenter=new google.maps.LatLng(51.508742,-0.120850);

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
  google.maps.event.addListener(map, 'click', function(event) {
    
         placeMarker(event.latLng);
      
  });
    
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

    // Clear out the old markers.
   /* markers.forEach(function(marker) {
      marker.setMap(null);
    });
    markers = [];*/

    // For each place, get the icon, name and location.
    var bounds = new google.maps.LatLngBounds();
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
    map.fitBounds(bounds);
  });
}

function placeMarker(location) {
    
    myCenter=new google.maps.LatLng(location.lat(),location.lng());
    z=map.getZoom();
    initialize();

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
    
     list=location+"</br>";
        document.parent.getElementById("pincode").val=list;
    

       
}

google.maps.event.addDomListener(window, 'load', initialize);