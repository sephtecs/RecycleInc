<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Dash-board</title>
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/main.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>

<!-- Background image -->
<div class="bg-image" 
     style="background-image: url('https://images.unsplash.com/photo-1528323273322-d81458248d40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2429&q=80');
            height: 100vh">
<!-- Background image -->



    <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
	
	<svg style="margin-left:10px" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-tree-fill" viewBox="0 0 16 16">
  		<path d="M8.416.223a.5.5 0 0 0-.832 0l-3 4.5A.5.5 0 0 0 5 5.5h.098L3.076 8.735A.5.5 0 0 0 3.5 9.5h.191l-1.638 3.276a.5.5 0 0 0 .447.724H7V16h2v-2.5h4.5a.5.5 0 0 0 .447-.724L12.31 9.5h.191a.5.5 0 0 0 .424-.765L10.902 5.5H11a.5.5 0 0 0 .416-.777l-3-4.5z"/>
	</svg>
	
	

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
	
	<div class="justify-content-center">
		<h1 class="d-flex justify-content-center">Recycl-Inc</h1>
		<h3 class="d-flex justify-content-center">A one-stop-shop for all your recycling needs!</h3>
			<br />

		<form action="/locations" class="col-4 mx-auto d-flex justify-content-center">
			<input type="text" class="form-control" placeholder="Zipcode" aria-label="Username" aria-describedby="basic-addon1">
			<button class="btn btn-success" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-tree-fill" viewBox="0 0 16 16">
	  				<path d="M8.416.223a.5.5 0 0 0-.832 0l-3 4.5A.5.5 0 0 0 5 5.5h.098L3.076 8.735A.5.5 0 0 0 3.5 9.5h.191l-1.638 3.276a.5.5 0 0 0 .447.724H7V16h2v-2.5h4.5a.5.5 0 0 0 .447-.724L12.31 9.5h.191a.5.5 0 0 0 .424-.765L10.902 5.5H11a.5.5 0 0 0 .416-.777l-3-4.5z"/>
				</svg>
			</button>
		</form>
    
	</div>
	
	<div class="youtube">
		<br /><br />
  		<iframe width="660" height="415" src="https://www.youtube.com/embed/4JDGFNoY-rQ" allowfullscreen></iframe>
	</div>
	<br>
	<div id="map"></div>
	
</div>

<div class="topspacing wm-bg-gray">
	<div class="bg-white">
		<div class="wm-bg-gray" style="position: relative">
				<div>
					<div class="container">
						<div class="d-flex flex-column-reverse flex-xl-row-reverse align-items-center">
							<div class="d-flex text-edge-container" style="flex-grow: 1; flex-shrink: 1; flex-basis: inherit; margin-top: 10px">
								<div class="class="edge d-none d-xl-block">
									<div class="text-container bg-white d-flex flex-column">
							            <p style="margin-left: 20px"><strong>Doloremque vero ex debitis veritatis?</strong></p>
							            <p style="margin-left: 20px" class="text-muted">
							              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod itaque voluptate
							              nesciunt laborum incidunt. Officia, quam consectetur. Earum eligendi aliquam illum
							              alias, unde optio accusantium soluta, iusto molestiae adipisci et?
							            </p>
  										<p style="margin-left: 20px" class="text-muted">
							              Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis consequatur
							              eligendi quisquam doloremque vero ex debitis veritatis placeat unde animi laborum
							              sapiente illo possimus, commodi dignissimos obcaecati illum maiores corporis.
							            </p>
							            <p style="margin-left: 20px"><strong>Doloremque vero ex debitis veritatis?</strong></p>
							            <p style="margin-left: 20px" class="text-muted">
							              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod itaque voluptate
							              nesciunt laborum incidunt. Officia, quam consectetur. Earum eligendi aliquam illum
							              alias, unde optio accusantium soluta, iusto molestiae adipisci et?
							            </p>
									</div>
								</div>
							</div>
							<div margin-top:20px" class="rounded mx-auto d-block image-edge-container image-edge-container-left d-flex d-xl-block background-transparent">
								<div class="image-container">
									<image src="https://images.unsplash.com/photo-1621451537084-482c73073a0f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1074&q=80">
									</image>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
</div>

<!-- Footer -->
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->

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
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" class="text-white">Link 1</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 2</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 3</a>
            </li>
            <li>
              <a href="#!" class="text-white">Link 4</a>
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