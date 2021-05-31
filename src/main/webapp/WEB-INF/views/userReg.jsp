<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div style="height: 90vh; margin-top:10rem;">
		<div class="row  justify-content-md-center ">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header bg-info">
						<h3 class="text-center">Register</h3>
					</div>
					<div class="card-body border-primary">
						<form action="saveUser" method="post">
						<div class="form-group">
								<label for="fname">First Name</label> 
								<input type="text" class="form-control" name="fname" id="fname" required> 
								
							</div>
							<div class="form-group">
								<label for="lname">Last Name</label> 
								<input type="text" class="form-control" name="lname" id="fname" required> 
								
							</div>
							
							<div class="form-group">
								<label for="add">Address</label> 
								<input type="text" class="form-control" name="add" id="add" required> 
								
							</div>
							<div class="form-group">
								<label for="mob">Mobile No</label> 
								<input type="text" class="form-control"  name="mob" id="mob" required>
							</div>
							<div class="form-group">
								<label for="Email1">Email address</label> 
								<input type="email" class="form-control" name="email" id="Email1" required> 
								
							</div>
							<div class="form-group">
								<label for="username">User Name</label> 
								<input type="text" class="form-control" name="username" id="username" required> 
								
							</div>
							<div class="form-group">
								<label for="password">Password</label> 
								<input type="password" class="form-control"  name="password" id="password" required>
							</div>
							
							
							<button type="submit" class="btn btn-info btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>