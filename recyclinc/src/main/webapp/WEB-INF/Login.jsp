<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
  background-image: url('img_girl.jpg');
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<form:form class="form-floating" action="/login" model="post" modelAttribute="newLogin">
				<div>
					<p>
						<form:input path="email" type="text" class="form-control" id="floatingInputValue" placeholder="Email" value=""/>
						<form:errors path="email" class="text-danger"/>
					</p>
					<p>
						<form:input path="password" type="text" class="form-control" id="floatingInputValue" placeholder="Password" value=""/>
						<form:errors path="password" class="text-danger"/>
					</p>
					<input type="submit" value="Login" class="btn btn-success"/>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>