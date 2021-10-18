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

<section class="vh-100 bg-image" style="background-image: url('https://images.unsplash.com/photo-1528323273322-d81458248d40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2429&q=80');">

    <nav class="navbar navbar-expand-lg navbar-dark bg-warning">
	 <a class=" navbar-brand" href="#">Recycl-Inc</a>
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
	    </ul>
	  </div>
		<div>
        	<a class="nav-link nav-item" href="/login">Login</a>
		</div>

	</nav>
	
	<div class="justify-content-center">
		<h1 class="d-flex justify-content-center">Recycl-Inc</h1>
		<h3 class="d-flex justify-content-center">A one-stop-shop for all your recycling needs!</h3>
			<br />
		<form class="col-4 mx-auto d-flex justify-content-center">
			<input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
			<button class="btn btn-success" type="submit">Go!</button>
		</form>
	</div>
	
	<div class="youtube">
		<br /><br />
  		<iframe width="660" height="415" src="https://www.youtube.com/embed/4JDGFNoY-rQ" allowfullscreen></iframe>
	</div>
	
</section>

</body>
</html>