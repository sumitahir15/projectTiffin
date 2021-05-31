<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
     <security:authorize access="!isAuthenticated() or hasRole('ROLE_USER')">
     <div class="container">
	<div class="jumbotron">
	<h1>Welcome To Online Tiffin</h1>
	</div>
	</div>
		<div class="row">
			 <c:forEach var="m" items="${mlist}">
			
			<div class="col-md-3 p-1">
				<div class="card h-100" >
					
					<img src="resources/img/${m.img}" class="card-img-top" alt="${m.name}" width="200px" height="200px">
					<div class="card-body">
						<h5 class="card-title">${m.name}</h5>
						<p>Price:&#8377;${m.price}</p>
						
						<div class="row">
							<div class="col">
								<a href="menuDetails?menuId=${m.menuId}" class="btn btn-info btn-block stretched-link">Details</a>
							</div>
							<div class="col">
											<a href="buy?menuId=${m.menuId}" class="btn btn-success btn-block">Add to Cart</a>
							</div>
						</div>
						 
					</div>
				</div>
			</div>
			<br>
			<br>
		</c:forEach>
		</div>
		</security:authorize>
<security:authorize access="hasRole('ROLE_ADMIN')">

	<div class="container-fluid">
	<div class="row h-25">
		<div class="col m-4">
			<div class="card" style="background-color:#ffe6ff">
				<div class="card-body">
 
					<h2> <c:out value="${rlist[0]}"/></h2>
			
					<h3>Current Customer</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to customers</a>
				</div>
			</div>
		</div>
		<div class="col m-4">
			<div class="card" style="background-color:#ccffdd">
				<div class="card-body">
					
					<h2><c:out value="${rlist[1]}"/></h2>
					
					<h3>Orders</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to ordes</a>
				</div>
			</div>
		</div>
		<div class="col m-4">
			<div class="card" style="background-color:#e6f9ff">
				<div class="card-body">
			
					<h2><c:out value="${rlist[2]}"/></h2>
					
					<h3>vendors</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to vend</a>
				</div>
			</div>
		</div>
		<div class="col m-4">
			<div class="card" style="background-color:#fff2cc">
				<div class="card-body">
			
					<h2><c:out value="${rlist[3]}"/></h2>
			
					<h3>menus</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to menus</a>
				</div>
			</div>
		</div>
	</div>
	
	
	</div>
	
</security:authorize>
<security:authorize access="hasRole('ROLE_VENDOR')">
	<div class="container-fluid">
	<div class="row h-25">
		<div class="col m-4">
			<div class="card" style="background-color:#ffe6ff">
				<div class="card-body">
					<h2>400</h2>
					<h3>Todays Ordersr</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to customers</a>
				</div>
			</div>
		</div>
		<div class="col m-4">
			<div class="card" style="background-color:#ccffdd">
				<div class="card-body">
					<h2>8000</h2>
					<h3>Orders</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to ordes</a>
				</div>
			</div>
		</div>
		<div class="col m-4">
			<div class="card" style="background-color:#e6f9ff">
				<div class="card-body">
					<h2>10</h2>
					<h3>Menu</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to menu</a>
				</div>
			</div>
		</div>
		<!-- <div class="col m-4">
			<div class="card" style="background-color:#fff2cc">
				<div class="card-body">
					<h2>1500</h2>
					<h3>Today menus</h3>
				</div>
				<div class="card-footer">
					<a href="#">go to t menu</a>
				</div>
			</div>
		</div> -->
	</div>
	
	</div>
	</security:authorize>

</body>
</html>