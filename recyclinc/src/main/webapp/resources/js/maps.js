var map;
      var infowindow;
      var service;

      function initMap() {
          var messiah = {
              lat: 40.158350,
              lng: -76.987454
          };
          var options = {
				center: location,
				zoom: 13
			}
		
			
          // function to get the users location and use that location to display pins
          function userLocation(){ 
		if(navigator.geolocation){
		console.log("geolocation is here!");
		
		navigator.geolocation.getCurrentPosition((loc) => {
			location.lat = loc.coords.latitude;
			location.lng = loc.coords.longitude;
			
			userLocation= { // variable to input into request variable to be used
				lat: location.lat,
				lng: location.lng
			}
			// instantiate a map --------------------------------------- 
		  	map = new google.maps.Map(document.getElementById("map"), options);
		  	
		  	// within the callback function i am able to grab the lat and lng
		  	var marker = new google.maps.Marker({
              position: userLocation,
              map: map,
              title: 'You are here!'
          });
          // variable to show the specific items i want to find
          var request = {
              location: userLocation,
              radius: 10000,
              name: "recycle",
              type: ['establishment']
          }
          infowindow = new google.maps.InfoWindow();
          service = new google.maps.places.PlacesService(map);
          service.nearbySearch(request, callback);
		  	//console.log(location.lat)
		  
			
		},
		(err) =>  { // if the user said no to allowing location services
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
        }  
			
		userLocation()
		
			
		

          
          

      }

      function callback(results, status) {
          if (status === google.maps.places.PlacesServiceStatus.OK) {
            results.forEach(createMarker);
          }
      }
      

      function createMarker(place) {
          var placeLoc = place.geometry.location;
          var marker = new google.maps.Marker({
              map: map,
              icon: {
                  url: 'http://maps.gstatic.com/mapfiles/circle.png',
                  anchor: new google.maps.Point(10, 10),
                  scaledSize: new google.maps.Size(10, 17)
              },
              position: place.geometry.location
          });
          marker.addListener('click', function() {

            var request = {
                reference: place.reference
            };
            service.getDetails(request, function(details, status) {

              infowindow.setContent([
                details.name,
                details.formatted_address,
                details.website,
                details.rating,
                details.formatted_phone_number].join("<br />"));
              infowindow.open(map, marker);
            });

          })
      }