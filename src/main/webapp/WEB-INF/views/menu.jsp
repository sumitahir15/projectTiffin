<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	 pageEncoding="ISO-8859-1"%>
	 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	
	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>
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
		
</body>
</html>