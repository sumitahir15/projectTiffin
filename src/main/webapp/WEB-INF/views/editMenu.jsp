<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Menu</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>
	<h2 class="text-center">Edit Menu</h2>
	<div class="container">
	<form action="updateMenu" method="post">
<div class="form-row">

			
	<div class="form-group col-md-6">
		
				<label for="menu_id">Name</label> <input type="text"
					class="form-control" id="menuId" name="menuId" value=${menu.menuId }>
			</div>
			</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="name">Name</label> <input type="text"
					class="form-control" id="name" name="name" value=${menu.name }>
			</div>

			<div class="form-group col-md-6">
				<label for="price">Price</label> <input type="text"
					class="form-control" id="price" name="price" value=${menu.price }>
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-4">
				<label for="img">Image</label> <input type="text"
					class="form-control" id="img" name="img" value=${menu.img }>
			</div>

			<div class="form-group col-md-8">
				<label for="ingredients">Ingredients</label> <input type="text"
					class="form-control" id="ingredients" name="ingredients" value=${menu.ingredients }>
			</div>
		  <security:authorize access="hasRole('ROLE_ADMIN')">
    <div class="form-group col-md-4">
      <label for="vendorId">Vendor ID</label>
      <input type="text" class="form-control" id="vendorId" name="vendorid" value=${menu.vendorid } >
    </div>
    
   </security:authorize>
		  <security:authorize access="hasRole('ROLE_VENDOR')">
    <div class="form-group col-md-4">
      <label for="vendorId">Vendor ID</label>
      <input type="text" class="form-control" id="vendorId" name="vendorid" value=${menu.vendorid } readonly>
    </div>
    
   </security:authorize>
   </div>
		<button type="submit" class="btn btn-primary">Edit Menu</button>
		</form>
		</div>
</body>
</html>
