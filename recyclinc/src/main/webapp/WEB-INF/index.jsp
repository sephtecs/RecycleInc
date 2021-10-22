<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recycl-inc</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>

<body>

<!-- Background image -->
<div class="bg-image " 
     style="background-image: url('https://images.unsplash.com/photo-1528323273322-d81458248d40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2429&q=80');
            height: 100vh">
<!-- Background image -->


	<!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
    
    <!-- tree icon -->	
	<svg style="margin-left:10px" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-tree-fill" viewBox="0 0 16 16">
  		<path d="M8.416.223a.5.5 0 0 0-.832 0l-3 4.5A.5.5 0 0 0 5 5.5h.098L3.076 8.735A.5.5 0 0 0 3.5 9.5h.191l-1.638 3.276a.5.5 0 0 0 .447.724H7V16h2v-2.5h4.5a.5.5 0 0 0 .447-.724L12.31 9.5h.191a.5.5 0 0 0 .424-.765L10.902 5.5H11a.5.5 0 0 0 .416-.777l-3-4.5z"/>
	</svg>
	
	<!-- NAVBAR LINKS -->
 	 <a class="navbar-brand" style="margin-left:10px" href="/">Recycl-Inc</a>
		  <div class="collapse navbar-collapse" id="navbarText">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="#">Our Mission</a>
		      </li>
	
		      <li class="nav-item">
		      <c:if test="${user.id == null}">
		        <a class="nav-link" href="/login">Login</a>
		      </c:if>
		      <c:if test="${user.id != null }">
		      	<a class="nav-link" href="/userdash">My Dashboard</a>
		      </c:if>
		      </li>
		    </ul>
		  </div>
	  <div>
	  
	  <div class="login-reg">
	  <c:if test="${user.id == null }">
	  	<a href="/register">Sign-up</a>
	  </c:if>
	  <c:if test="${user.id != null }">
	  	<a href="/logout">Logout</a>
	  </c:if>
	  </div>
	  
	  </div>

	</nav>
	
	<!-- MAIN CONTENT -->
	<div class="justify-content-center">
		<h1 class="d-flex justify-content-center">Recycl-inc</h1>
		<h3 class="d-flex justify-content-center">A one-stop-shop for all your recycling needs!</h3>
		<form id="location-form" class="col-4 mx-auto d-flex justify-content-center">
			<input id="location-input" type="text" class="form-control" placeholder="Zipcode" aria-label="Username" aria-describedby="basic-addon1">
			<button class="btn btn-success" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tree-fill" viewBox="0 0 16 16">
	  				<path d="M8.416.223a.5.5 0 0 0-.832 0l-3 4.5A.5.5 0 0 0 5 5.5h.098L3.076 8.735A.5.5 0 0 0 3.5 9.5h.191l-1.638 3.276a.5.5 0 0 0 .447.724H7V16h2v-2.5h4.5a.5.5 0 0 0 .447-.724L12.31 9.5h.191a.5.5 0 0 0 .424-.765L10.902 5.5H11a.5.5 0 0 0 .416-.777l-3-4.5z"/>
				</svg>
			</button>
		</form>	
	</div>
	<br />
	
		<!-- GOOGLE MAP -->
		<div style="margin-top:-10px" class="mx-auto justify-content-center rounded" id="map"></div>
	
	</div>
	
	<!--  -->
	<div class="topspacing wm-bg-gray">
		<div class="bg-white">
			<div class="wm-bg-gray" style="position: relative">
					<div>
						<div class="container">
							<div class="d-flex flex-column-reverse flex-xl-row-reverse align-items-center">
								<div class="d-flex text-edge-container" style="flex-grow: 1; flex-shrink: 1; flex-basis: inherit; margin-top: 10px">
									<div class="class="edge d-none d-xl-block">
										<div class="text-container bg-white d-flex flex-column">
								            <h2 style="margin-left: 200px"="justify-content-center"><strong>The little things make the biggest difference and here's why:</strong></h2>
											<div class="youtube">
												<br /><br />
										  		<iframe width="660" height="415" src="https://www.youtube.com/embed/4JDGFNoY-rQ" allowfullscreen></iframe>
											</div>
										</div>
										<div style="margin-top:200px" class="text-container bg-white d-flex flex-column">
										      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>      
										      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>      
										      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>
										      									      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>      
										      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>      
										      <p>
										        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
										        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
										        eum harum corrupti dicta, aliquam sequi voluptate quas.
										      </p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br />
					<br />
					<br />
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg-dark text-center text-white">
	  <!-- Grid container -->
	  <div class="container p-4">
	
	    <!-- Section: Form -->
	    <section class="">
	      <form action="">
	        <!--Grid row-->
	        <div class="row d-flex justify-content-center">
	          <!--Grid column-->
	          <div class="col-auto">
	            <p class="pt-2">
	              <strong>Sign up for our newsletter</strong>
	            </p>
	          </div>
	          <!--Grid column-->
	
	          <!--Grid column-->
	          <div class="col-md-5 col-12">
	            <!-- Email input -->
	            <div class="form-outline form-white mb-4">
	              <input type="email" id="form5Example21" class="form-control" />
	              <label class="form-label" for="form5Example21">Email address</label>
	            </div>
	          </div>
	          <!--Grid column-->
	
	          <!--Grid column-->
	          <div class="col-auto">
	            <!-- Submit button -->
	            <button type="submit" class="btn btn-outline-light mb-4">
	              Subscribe
	            </button>
	          </div>
	          <!--Grid column-->
	        </div>
	        <!--Grid row-->
	      </form>
	    </section>
	    <!-- Section: Form -->
	
	    <!-- Section: Text -->
	    <section class="mb-4">
	      <p>
	        Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt distinctio earum
	        repellat quaerat voluptatibus placeat nam, commodi optio pariatur est quia magnam
	        eum harum corrupti dicta, aliquam sequi voluptate quas.
	      </p>
	    </section>
	    <!-- Section: Text -->
	
	    <!-- Section: Links -->
	    <section class="">
	      <!--Grid row-->
	      <div class="row">
	        <!--Grid column-->
	        <div class="col-lg-3 col-md-6 mb-md-0">
	          <h5 class="text-uppercase">Where To Go</h5>
	
	          <ul class="list-unstyled mb-0">
	            <li>
	              <a href="#!" class="text-white">See Recyling Centers Nearby</a>
	            </li>
	          </ul>
	        </div>
	        <!--Grid column-->
	
	        <!--Grid column-->
	        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
	          <h5 class="text-uppercase">Rewards System</h5>
	
	          <ul class="list-unstyled mb-0">
	            <li>
	              <a href="#!" class="text-white">Join Now</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Learn More</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Manage Account</a>
	            </li>
	          </ul>
	        </div>
	        <!--Grid column-->
	
	        <!--Grid column-->
	        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
	          <h5 class="text-uppercase">Help & FAQs</h5>
	
	          <ul class="list-unstyled mb-0">
	            <li>
	              <a href="#!" class="text-white">About us</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Newsletter sign up</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Frequently Asked Questions</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Contact us</a>
	            </li>
	          </ul>
	        </div>
	        <!--Grid column-->
	
	        <!--Grid column-->
	        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
	          <h5 class="text-uppercase">Other Sites</h5>
	
	          <ul class="list-unstyled mb-0">
	            <li>
	              <a href="#!" class="text-white">Waste Management 101</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Paper, Plastic, Metal</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Captain Planet</a>
	            </li>
	            <li>
	              <a href="#!" class="text-white">Global Warming</a>
	            </li>
	          </ul>
	        </div>
	        <!--Grid column-->
	      </div>
	      <!--Grid row-->
	    </section>
	    <!-- Section: Links -->
	  </div>
	  <!-- Grid container -->
	
	  <!-- Copyright -->
	  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
	    © 2021 Copyright:
	    <a class="text-white" href="https://mdbootstrap.com/">www.codingdojo.com</a>
	  </div>
	  <!-- Copyright -->
	</footer>
	<!-- Footer -->

	<script src="/resources/js/maps.js"></script>
	<script async defer
	  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfjx3zVhKYGy-W6c6_ib6Q9KA55v0o1nM&libraries=places&callback=initMap">
	</script>
	<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>