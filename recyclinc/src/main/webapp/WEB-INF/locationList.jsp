<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<style>iframe {width:100%;height:100%;}</style>
	<script src="/resources/js/maps.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
	 <a class="navbar-brand" href="#">RecyclInc</a>
	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	 </button>
	  <div class="collapse navbar-collapse" id="navbarText">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Our Mission</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Login/Sign-up</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class="justify-content-center mx-auto d-flex">
		<h2>List of Locations</h2>
		<hr />
		<br />
	</div>
	<div id="map"></div>
	<hr/>
	


	
	
	
	<div class="col-4 justify-content-center">	
		<form id="location-form">
			<input id="location-input" type="text" class="form-control form-control-lg" placeholder="Zipcode">
			<input type="submit" value="Submit" class="btn btn-primary">
		</form>
	</div>
	
	
	<div id="formattedAddressOutput">${formattedAddress }</div>
	
	
	
	
	
	<table class="table">

			<tbody class="text-center">
				<tr>
					<td><a href="#">Location 1</a></td>
					<td><a href="#">Location 2</a></td>
					<td><a href="#">Location 3</a></td>
				</tr>
				<tr>
					<td><a href="#">Location 4</a></td>
					<td><a href="#">Location 5</a></td>
					<td><a href="#">Location 6</a></td>
				</tr>
				<tr>
					<td><a href="#">Location 7</a></td>
					<td><a href="#">Location 8</a></td>
					<td><a href="#">Location 9</a></td>
				</tr>
			</tbody>
			
	</table>
	<script async defer
	  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAt7ZofcfDKCTzFR6wmAk6cOZngsw5NSEE&callback=initMap">
	</script>

</body>
</html>