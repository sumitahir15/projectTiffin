<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit vendor</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
	<h2 class="text-center">Edit Vendor</h2>
	<div class="container">
	<form action="updateVendor" method="post">
		<div class="form-row">


			<div class="form-group col-md-6">

				<label for="id">vendor id</label> <input type="text"
					class="form-control" id="id" name="id" value=${vendor.id }>
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name" value=${vendor.name }>
			</div>
			<div class="form-group col-md-4">
				<label for="mobile">Mobile</label> <input type="text"
					class="form-control" id="mobile" name="mobile" value=${vendor.mobile }>
			</div>
		</div>
		<div class="form-row">

			
<div class="form-group col-md-6">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" name="address"
					value=${vendor.address }>
			</div>
			<div class="form-group col-md-4">
				<label for="email">Email</label> <input type="text"
					class="form-control" id="email" name="email" value=${vendor.email }>
			</div>
			<div class="form-group col-md-8">
				<label for="username">username</label> <input type="text"
					class="form-control" id="username" name="username"
					value=${vendor.username } readonly>
			</div>

			<button type="submit" class="btn btn-primary">Edit vendor</button>
	</form>
</div>
</body>
</html>
