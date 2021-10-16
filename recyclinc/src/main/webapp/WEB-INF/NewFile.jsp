<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Main Dashboard</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<nav class="navbar">
			  <form class="px-4 py-3">
			    <div class="mb-3">
			      <label for="exampleDropdownFormEmail1" class="form-label">Email address</label>
			      <input type="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="email@example.com">
			    </div>
			    <div class="mb-3">
			      <label for="exampleDropdownFormPassword1" class="form-label">Password</label>
			      <input type="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
			    </div>
			    <div class="mb-3">
			      <div class="form-check">
			        <input type="checkbox" class="form-check-input" id="dropdownCheck">
			        <label class="form-check-label" for="dropdownCheck">
			          Remember me
			        </label>
			      </div>
			    </div>
			    <button type="submit" class="btn btn-primary">Sign in</button>
			  </form>
			  <div class="dropdown-divider"></div>
			  <a class="dropdown-item" href="#">Don't have an account yet? Sign up</a>
			  <a class="dropdown-item" href="#">Forgot password?</a>
			</nav>
		</div>
	</div>
</body>
</html>