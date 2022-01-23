// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function initMap(lat, lng) {
  var myCoords = new google.maps.LatLng(lat, lng);
  var mapOptions = {
		center: myCoords,
		zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map'), mapOptions);

  var marker = new google.maps.Marker({
		position: myCoords,
		map: map
  });
}

function initMap2(lat, lng) {
	if (!lat || !lng){
		lat = 40.05;
		lng = -105.25;
	}

  var myCoords = new google.maps.LatLng(lat, lng);
  var mapOptions = {
      center: myCoords,
      zoom: 14
  };

  var map = new google.maps.Map(document.getElementById('map2'), mapOptions);

  var marker = new google.maps.Marker({
      position: myCoords,
      animation: google.maps.Animation.DROP,
      map: map
  });

  function placeMarker(position, map) {
		if (marker == undefined){
			marker = new google.maps.Marker({
				position: position,
				map: map,
				animation: google.maps.Animation.DROP,
			});
		}
		else{
			marker.setPosition(position);
		}
		map.setCenter(position);
  }

  google.maps.event.addListener(map, 'click', function(event) {
		placeMarker(event.latLng, map);
		coordinates = [event.latLng.lat(), event.latLng.lng()];

		window.location = `charging_stations?search=${coordinates}`;
  });
}
