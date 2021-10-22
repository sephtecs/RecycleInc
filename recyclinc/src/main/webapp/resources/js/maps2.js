/**
 * 
 */
 
 /**
 * 
 */

/*
	Trying to figure out how to use googles nearby search api,
	but then once I get the information save it into an array, the loop through
	and put markers on the map where those locations are.
	Created a model for locations so user can save locations
*/
 

let map, infoWindow;
let geocoder;
let places;

	// initializes the map
	function initMap() {
		var location = {
			lat: 40.000,
			lng: -79.000
		}
		var options = {
			center: location,
			zoom: 13
		}
		
	 // Get Location Form
	 var locationForm = document.getElementById('location-form');
	 console.log(locationForm)
	 
	 
	 
	 // Listen for submit from the user
	 locationForm.addEventListener('submit', geocode)
	 
	 
	
	 
	
	// geocode function find locations
	 function geocode(e){
		e.preventDefault();

		 // variable from the information input by user
		var location = document.getElementById('location-input').value;
		 console.log(location)
		 // --------------------------------------------

		 // axios is used to communicate with google api for a request and response
		axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
			params:{
				address:location, // the request
				key: 'AIzaSyDfjx3zVhKYGy-W6c6_ib6Q9KA55v0o1nM' // need an api key
			}	
		})
		.then(function(response){ // response from google api
			console.log(response);
			var formattedAddress = response.data.results[0].formatted_address;
			map.setCenter(response.data.results[0].geometry.location)
			//console.log(response.data.results[0].address_components[0].long_name)
			var marker = new google.maps.Marker({
				map: map, 
				position: response.data.results[0].geometry.location,
				html: document.getElementById('content'),
			})
	
			// Output formatted address to the jsp file
			document.getElementById('formatted-address').innerHTML = formattedAddress;
			console.log(formattedAddress)
		
		})
		.catch(function(error){
			console.log(error);
		})
		
	}
	  
	  // ------------------------------------------------------------------------
	  
	  
	  
	  
	  
	
	  // Get the users location via their browser ---------------------------------
	  if(navigator.geolocation){
		console.log("geolocation is here!");
		
		navigator.geolocation.getCurrentPosition((loc) => {
			location.lat = loc.coords.latitude;
			location.lng = loc.coords.longitude;
			
			// instantiate a map --------------------------------------- 
		  	map = new google.maps.Map(document.getElementById("map"), options);
		},
		(err) => { // if the user said no to allowing location services
			console.log("user said no");
			infoWindow = new google.maps.InfoWindow;
			map = new google.maps.Map(document.getElementById("map"), options)
		}
		)
		}else{ // Browser wont support location services
			console.log('geolocation not supported: ');
			infoWindow = new google.maps.InfoWindow;
			map = new google.maps.Map(document.getElementById("map"), options);
		}
		
		
	
	    function callback(results, status) {
	        if (status == google.maps.places.PlacesServiceStatus.OK) {
	            for (var i = 0; i < results.length; i++) {
	                createMarker(results[i]);
	            }
	        }        
	    }
		// -----------------------------------------------------
		
		
		
		
		// Trying to get results based off of a Nearby Places search
		var service = new google.maps.places.PlacesService(map);
		service.textSearch(request, callback);
	 
	 	function callback(results, status){
		if(status == google.maps.places.PlacesServiceStatus.OK){
			for(var i = 0; i < results.length; i++){
				var place = results[i];
				createMarker(results[i]);
			}
			console.log(place)
		}
	}
		// --------------------------------------------------------

		
		 function createMarker(place) {
        var placeLoc = place.geometry.location;
        var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location
        });

        google.maps.event.addListener(marker, 'click', function() {
            infowindow.setContent(place.name);
            infowindow.open(map, this);
        });
 }
		
		
		
		
		
		
		
	  
	  // Methods for the autocomplete funcion ---------
	  var request = {
		  query: document.getElementById('location-input').value,
		  fields: ['name', 'geometry']
		  }
		
	  const autocomplete = new google.maps.places.Autocomplete(document.getElementById("location-input"),{
		componentRestrictions: {'country': ['us']},
		fields: ['formatted_address','geometry', 'name'],
		types: ['establishment']
	})
	
		service.findPlaceFromQuery(request, function(results, status){
			if(status === google.maps.places.PlacesServiceStatus.OK){
				for(var i = 0;i < results.length; i++){
					createMarker(results[i]);
				}
				map.setCenter(results[0].geometry.location)
			}
		})
	  autocomplete.addListener("place_changed", () => {
		const place = autocomplete.getPlace();
		new google.maps.Marker({
			position: place.geometry.location,
			title: place.name,
			map: map,
			animation: google.maps.Animation.DROP,
			
		})
	// -----------------------------------------------
  
	})
	}
	
	
	
	
	
