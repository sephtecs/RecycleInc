/**
 * 
 */
 
 
 // Get Location Form
 var locationForm = document.getElementById('location-form');
 
 // Listen for submit
 locationForm.addEventListener('submit', geocode)
 
 // Get input from submit
 var location = document.getElementById('location-input').value;
 

 
 function geocode(e){
	e.preventDefault();
	
	axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
		params:{
			address:location,
			key: 'AIzaSyDfjx3zVhKYGy-W6c6_ib6Q9KA55v0o1nM'
		}	
	})
	.then(function(response){
		console.log(response);
		
		var formattedAddress = response.data.results[0].formatted_address;
		var lat = response.data.results[0].geometry.location.lat;
		var lng = response.data.results[0].geometry.location.lng;
		
		
		// Output to app
		document.getElementById('formatted-address').innerHTML = formattedAddressOutput;
	
	})
	.catch(function(error){
		console.log(error);
	})
	
}
 
 
 
let map;

function initMap() {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: -34.397, lng: 150.644 },
    zoom: 10,
  });
  
/* 	var searchBox = new google.maps.places.SearchBox(document.getElementById('mapsearch'));*/
  
	// Listen for click on map
	google.maps.event.addListener(map, 'click', function(event){
		// Add Marker
		addMarker({coords:event.latLng})
	})
	
	// Add Marker Function
	function addMarker(props){
		var marker = new google.maps.Marker({
			position:props.coords,
			map:map
		})
	}
	
	
	
}


