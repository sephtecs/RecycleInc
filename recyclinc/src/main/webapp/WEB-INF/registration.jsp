<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
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
   
<section class="vh-100 bg-image" style="background-image: url('https://images.unsplash.com/photo-1591193686104-fddba4d0e4d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Sign Up</h2>


              <form:form action="/register/newUser" method="post" modelAttribute="newUser">
                
                <div class="form-outline mb-4">
                  <form:errors path="firstName" class="text-danger" />
                  <label>First Name</label>
                  <form:input path="firstName" class="form-control form-control-lg" />               
                </div>
                
                 <div class="form-outline mb-4">
                 <form:errors path="lastName" class="text-danger" />
                  <label>Last Name</label>
                  <form:input path="lastName" class="form-control form-control-lg" />
                </div>

                <div class="form-outline mb-4">
                  <form:errors path="email" class="text-danger" />
                  <label>Your Email</label>
                  <form:input path="email" class="form-control form-control-lg" />
                </div>

                <div class="form-outline mb-4">
                <form:errors path="password" class="text-danger" />
                  <label>Password</label>
                  <form:input type="password" path="password" class="form-control form-control-lg" />
                </div>

                <div class="form-outline mb-4">
                  <form:errors path="password" class="text-danger" />
                  <label>Confirm Password</label>
                  <form:input type="password" path="confirm" class="form-control form-control-lg" />
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input
                    class="form-check-input me-2"
                    type="checkbox"
                    value=""
                  />
                  <label class="form-check-label">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="/login" class="fw-bold text-body"><u>Login here</u></a></p>

              </form:form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>