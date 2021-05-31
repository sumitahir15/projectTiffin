<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Cust</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
	<h2 class="text-center">Edit Customer</h2>
	<form action="updateCust" method="post">
	<div class="container">
<div class="form-row">

			
	<div class="form-group col-md-6">
		
				<label for="id">Cust id</label> <input type="text"
					class="form-control" id="id" name="id" value=${cust.id }>
			</div>
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="fname">First Name</label> <input type="text"
					class="form-control" id="fname" name="fname" value=${cust.fname }>
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="lname">Last Name</label> <input type="text"
					class="form-control" id="lname" name="lname" value=${cust.lname }>
			</div>
			<div class="form-group col-md-6">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address" value=${cust.address }>
			</div>
		</div>
		<div class="form-row">
		<div class="form-group col-md-4">
				<label for="mobile">Mobile</label> <input type="text"
					class="form-control" id="mobile" name="mobile" value=${cust.mobile }>
			</div>
			<div class="form-group col-md-4">
				<label for="email">Email</label> <input type="text"
					class="form-control" id="email" name="email" value=${cust.email }>
			</div>

			<div class="form-group col-md-8">
				<label for="username">username</label> <input type="text"
					class="form-control" id="username" name="username" value=${cust.username } readonly>
			</div>
		
		<button type="submit" class="btn btn-primary">Edit cust</button>
		</form>
		</div>
</body>
</html>
