<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Menu</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h2 class="text-center">Add New Menu</h2>
<div class="container">
<form action="saveMenu" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="Name" name="name">
    </div>
    
    <div class="form-group col-md-6">
      <label for="price">Price</label>
      <input type="price" class="form-control" id="price" name="price">
    </div>
    </div>
  <div class="form-row">
  <div class="form-group col-md-4">
    <label for="img">Image</label>
    <input type="text" class="form-control" id="img" name="img">
  </div>

    <div class="form-group col-md-4">
      <label for="ingredients">Ingredients</label>
      <input type="text" class="form-control" id="ingredients" name="ingredients">
    </div>
     <security:authorize access="hasRole('ROLE_ADMIN')">
     
     <div class="form-group col-md-6">

    <select class="form-select" id="vendorid" name="vendorid">
  <option selected>Select Vendor</option>
  
   <c:forEach var="vid" items="${id }">
   <option value="${vid }">${vid }</option>
    </c:forEach>

</select>
</div>
</security:authorize>
  
   <security:authorize access="hasRole('ROLE_VENDOR')">
    <div class="form-group col-md-4">
      <label for="vendorId">Vendor ID</label>
      <input type="text" class="form-control" id="vendorId" name="vendorid" value=${vid } readonly>
    </div>
    
   </security:authorize>
   </div>
  <button type="submit" class="btn btn-primary">Add Menu</button>
<button type="reset" class="btn btn-primary">Reset</button>
</form>
</div>
</body>
</html>