<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Recycling Centers</title>
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
<section class="vh-100 bg-image" style="background-image: url('https://);">
	<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
	
	<svg style="margin-left:10px" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-tree-fill" viewBox="0 0 16 16">
  		<path d="M8.416.223a.5.5 0 0 0-.832 0l-3 4.5A.5.5 0 0 0 5 5.5h.098L3.076 8.735A.5.5 0 0 0 3.5 9.5h.191l-1.638 3.276a.5.5 0 0 0 .447.724H7V16h2v-2.5h4.5a.5.5 0 0 0 .447-.724L12.31 9.5h.191a.5.5 0 0 0 .424-.765L10.902 5.5H11a.5.5 0 0 0 .416-.777l-3-4.5z"/>
	</svg>
	
	

	 <a class="navbar-brand" style="margin-left:10px" href="/">Recycl-Inc</a>
		  <div class="collapse navbar-collapse" id="navbarText">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">Home</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Our Mission</a>
		      </li>
	
		      <li class="nav-item">
		      <c:if test="${user.id == null}">
		        <a class="nav-link" href="/login">Login</a>
		      </c:if>
		      <c:if test="${user.id != null }">
		      	<a class="nav-link" href="/userdash/${user.id}">My Dashboard</a>
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
	
	<div class="justify-content-center mx-auto d-flex">
		<h2 style="color: green">My Recycling Centers</h2>
		<hr />
		<br />
	</div>
	
	<div class="box-1 justify-content-center mx-auto">
		<h2 style="margin-left: 10px"><a href="#">Location 1</a></h2>
		<h2 style="margin-left: 10px"><a href="#">Location 2</a></h2>
		<h2 style="margin-left: 10px"><a href="#">Location 3</a></h2>
		<h2 style="margin-left: 10px"><a href="#">Location 4</a></h2>
		<h2 style="margin-left: 10px"><a href="#">Location 5</a></h2>
		<h2 style="margin-left: 10px"><a href="#">Location 6</a></h2>
	</div>


</section>
</body>
</html>