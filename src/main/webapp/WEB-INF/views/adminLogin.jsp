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
	<div style="height: 90vh; margin-top: 10rem;">
		<% if(request.getParameter("errormsg")!=null)
			{%>
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong>Error</strong> <%request.getParameter("errormsg"); %>
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div><%} %>
		<div class="row  justify-content-md-center ">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header bg-info">
						<h3 class="text-center">Login</h3>
					</div>
					<div class="card-body border-primary">
						<form action="validate" method="post">
							<div class="form-group">
								<label for="Email1">Email address</label> <input type="email"
									class="form-control" name="email" id="Email1">

							</div>
							<div class="form-group">
								<label for="Password1">Password</label> <input type="password"
									class="form-control" name="password" id="Password1">
							</div>

							<button type="submit" class="btn btn-info btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>