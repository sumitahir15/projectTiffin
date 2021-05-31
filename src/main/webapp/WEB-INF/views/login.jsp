<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>

</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
		 <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if>
 
		<div class="row  justify-content-md-center ">
			<div class="col-md-4">
				<div class="card">
					<div class="card-header bg-info">
						<h3 class="text-center">Login</h3>
					</div>
					<div class="card-body border-primary">
						<form name='login' action="login" method='POST'>
							<div class="form-group">
								<label for="username">User Name</label> <input type="text"
									class="form-control" name="username" id="username">

							</div>
							<div class="form-group">
								<label for="Password">Password</label> <input type="password"
									class="form-control" name="password" id="password">
							</div>

							<button type="submit" class="btn btn-info btn-block">Submit</button>
						</form>
						<input type="hidden" name="${_csrf.parameterName}"
            value="${_csrf.token}" />
					</div>
				</div>
			</div>
		</div>
</body>
</html>