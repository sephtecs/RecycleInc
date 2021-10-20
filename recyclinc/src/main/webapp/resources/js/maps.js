/**
 * 
 */


 

let map, infoWindow;
let geocoder;
let places;


	function initMap() {
		var location = {
			lat: 40.000,
			lng: -79.000
		}
		var options = {
			center: location,
			zoom: 13
		}
		
	  if(navigator.geolocation){
		console.log("geolocation is here!");
		
		navigator.geolocation.getCurrentPosition((loc) => {
			location.lat = loc.coords.latitude;
			location.lng = loc.coords.longitude;
			
		  	map = new google.maps.Map(document.getElementById("map"), options);
		    /*center: { lat: -34.397, lng: 150.644 },
		    zoom: 13,
		  });
		  */
		},
		(err) => {
			console.log("user said no");
			map = new google.maps.Map(document.getElementById("map"), options)
		}
		)
		}else{
			console.log('geolocation not supported: ');
			map = new google.maps.Map(document.getElementById("map"), options);
		}
	
	  geocoder = new google.maps.Geocoder();
	  infoWindow = new google.maps.InfoWindow;
	  
	  autocomplete = new google.maps.places.Autocomplete(document.getElementById("location-input"),{
		componentRestrictions: {'country': ['us']},
		fields: ['geometry', 'name'],
		types: ['establishment']
	})
	
	  autocomplete.addListener("place_changed", () => {
		const place = autocomplete.getPlace();
		new google.maps.Marker({
			position: place.geometry.location,
			title: place.name,
			map: map
		})
		google.maps.event.addListener(map, 'click', function(event){
			// Add Marker
			addMarker({coords:event.latLng})
		})
	  
		// Listen for click on map
		
		// Add Marker Function
		function addMarker(props){
			var marker = new google.maps.Marker({
				position:props.coords,
				map:map
			})
		}
	})
	  
	
	
	
	
	}
	 // Get Location Form
	 var locationForm = document.getElementById('location-form');
	 console.log(locationForm)
	 
	 // Listen for submit
	 locationForm.addEventListener('submit', geocode)
	 
	 // Get input from submit
	
	
	 function geocode(e){
		e.preventDefault();
		
		 var location = document.getElementById('location-input').value;
		 console.log(location)
		 
		axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
			params:{
				address:location,
				key: ''
			}	
		})
		.then(function(response){
			console.log(response);
			var formattedAddress = response.data.results[0].formatted_address;
			var lat = response.data.results[0].geometry.location.lat;
			var lng = response.data.results[0].geometry.location.lng;
			map.setCenter(response.data.results[0].geometry.location)
			var marker = new google.maps.Marker({
				map: map, 
				position: response.data.results[0].geometry.location
			})
			
			// Output to app
			document.getElementById('formatted-address').innerHTML = formattedAddress;
		
		})
		.catch(function(error){
			console.log(error);
		})
		
	}
	
	
	
	
