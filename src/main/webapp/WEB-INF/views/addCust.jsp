<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cust</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<h2 class="text-center">Add new Customer</h2>
	<div class="container">
	<form action="saveUser" method="post">
<div class="form-row">

			
	<div class="form-group col-md-6">
		
				
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="fname">First Name</label> <input type="text"
					class="form-control" id="fname" name="fname" >
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="lname">Last Name</label> <input type="text"
					class="form-control" id="lname" name="lname" >
			</div>
			<div class="form-group col-md-6">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address" >
			</div>
		</div>
		<div class="form-row">
		<div class="form-group col-md-4">
				<label for="mobile">Mobile</label> <input type="text"
					class="form-control" id="mobile" name="mobile" >
			</div>
			<div class="form-group col-md-4">
				<label for="email">Email</label> <input type="text"
					class="form-control" id="email" name="email" >
			</div>

			<div class="form-group col-md-8">
				<label for="username">username</label> <input type="text"
					class="form-control" id="username" name="username" >
			</div>
			<div class="form-group col-md-8">
				<label for="username">Password</label> <input type="password"
					class="form-control" id="password" name="password" >
			</div>
		
		<button type="submit" class="btn btn-primary">Add cust</button>
		</form>
		</div>
</body>
</html>
