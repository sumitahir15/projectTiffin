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
	<h2 class="text-center">Add Vendor</h2>
	<div class="container">
	<form action="saveVendor" method="post">


			
	
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name" >
			</div>
		<div class="form-group col-md-6">
				<label for="mobile">Mobile</label> <input type="text"
					class="form-control" id="mobile" name="mobile" >
			</div>
			</div>
			<div class="form-row">
			<div class="form-group col-md-6">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address" >
			</div>
		
		
			<div class="form-group col-md-6">
				<label for="email">Email</label> <input type="email"
					class="form-control" id="email" name="email" >
			</div>
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="username">username</label> <input type="text"
					class="form-control" id="username" name="username" >
			</div>
			<div class="form-group col-md-6">
				<label for="username">Password</label> <input type="password"
					class="form-control" id="password" name="password" >
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Add Vendor</button>
		</form>
		</div>
</body>
</html>
