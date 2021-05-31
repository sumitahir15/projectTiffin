
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu Details</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	<br>
	<br>


	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="resources/img/${menu.img }"
					class="shadow-lg img-thumbnail w-100">
			</div>
			<div class="col-md-7 shadow-lg bg-light">
				<h3 class="text-uppercase">${menu.name }</h3>
				<h5>Price:- &#8377; ${menu.price }</h5>
				<form>
					<input type="hidden" value="${menu.menuId}" name="id">



				
				<a href="buy?menuId=${menu.menuId}" class="btn btn-info btn-block" role="button" aria-disabled="true">Add
						to cart</a>
					<hr>
				<a href="menu" class="btn btn-primary btn-block" role="button" aria-disabled="true">Back</a>
				
					<hr>
					<h5>Ingredients:-</h5>
					<div >${menu.ingredients}</div>
					<hr>
					<h5>Vendor Name:-</h5>
					<div >${vName}</div>		
			</form>
			</div>
		</div>
	</div>
	<br>



</body>
</html>