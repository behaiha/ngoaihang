var map;
var searchBox;
var markers = [];
var bounds;
var geocoder = new google.maps.Geocoder();
var infowindow = new google.maps.InfoWindow();
var marker;
var re;
var zoommap = 17;
var str = '',i = 0;
function initialize() {
  var mapOptions = {
    zoom: zoommap,
    center:new google.maps.LatLng(21.004722595214844000, 105.82205810000005),
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
  // map.zoom = 1;
  // map.setZoom(12);
  var defaultBounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(21.004722, 105.82205810000005));
  // map.fitBounds(defaultBounds);
  var input = document.getElementById('pac-input');
  // map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  searchBox = new google.maps.places.SearchBox((input));
  google.maps.event.addListener(map, 'click', function(event) {
        l = event.latLng;
        console.log("dc k?",l.d,l.e);
        codeLatLng(l.d,l.e);
        addMarker(event.latLng);
      });
  google.maps.event.addListener(searchBox, 'places_changed', function() {
    places = searchBox.getPlaces();

    for (var i = 0, marker; marker = markers[i]; i++) {
      marker.setMap(null);
    }

    // For each place, get the icon, place name, and location.
    markers = [];
    bounds = new google.maps.LatLngBounds();
    for (var i = 0, place; place = places[i]; i++) {
      var image = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      var marker = new google.maps.Marker({
        map: map,
        icon: image,
        title: place.name,
        position: place.geometry.location
      });

      markers.push(marker);

      bounds.extend(place.geometry.location);
    }
     
  });

}
function codeLatLng(lat,lng) {
  var latlng = new google.maps.LatLng(lat, lng);
  geocoder.geocode({'latLng': latlng}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      if (results[1]) {
        map.setZoom(zoommap);
        marker = new google.maps.Marker({
            position: latlng,
            map: map
        });
        re = results[1];
        str += "Địa điểm thứ "+(i++)+": "+re.formatted_address+'<br>';
        document.getElementById('places').innerHTML =str;  
        infowindow.setContent(results[1].formatted_address);
        infowindow.open(map, marker);
      } else {
        alert('No results found');
      }
    } else {
      alert('Geocoder failed due to: ' + status);
    }
  });
}
function addMarker(location) {
  var marker = new google.maps.Marker({
    position: location,
    map: map
  });
  markers.push(marker);
}
google.maps.event.addDomListener(window, 'load', initialize);

    function findLocation() {
      map.fitBounds(bounds);
    }