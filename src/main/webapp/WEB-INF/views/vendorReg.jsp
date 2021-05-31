<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
						<form action="saveVendor" method="post">
						<div class="form-group">
								<label for="name">Name</label> 
								<input type="text" class="form-control" name="name" id="name" required> 
								
							</div>
							
							<div class="form-group">
								<label for="mob">Mobile No</label> 
								<input type="text" class="form-control"  name="mobile" id="mob" required>
							</div>
							<div class="form-group">
								<label for="add">Address</label> 
								<input type="text" class="form-control" name="address" id="add" required> 
								
							</div>
							<div class="form-group">
								<label for="Email1">Email address</label> 
								<input type="email" class="form-control" name="email" id="Email1" required> 
								
							</div>
							<div class="form-group">
								<label for="usernamename">User Name</label> 
								<input type="text" class="form-control" name="username" id="username" required> 
								
							</div>
							<div class="form-group">
								<label for="Password">Password</label> 
								<input type="password" class="form-control"  name="password" id="Password" required>
							</div>
							
	
							<button type="submit" class="btn btn-info btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>