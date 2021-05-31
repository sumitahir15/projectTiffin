<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
 <jsp:include page="links.jsp" ></jsp:include>
 
</head>
<body>
<jsp:include page="navbar.jsp" ></jsp:include>
	<div class="container">
	<div class="jumbotron">
	<h1>Welcome To Online Tiffin</h1>
	</div>
	<div class="jumbotron">
	<security:authorize access="isAuthenticated()">
	  
	<security:authorize access="hasRole('ROLE_ADMIN')">
	<a href="adminLogin">Admin Login</a>
	</security:authorize>
		<a href="vendorLogin">Vendor Login</a>
		<a href="vendorReg">Vendor reg</a>
		</security:authorize>
	</div>
	</div>
	
</body>
</html>