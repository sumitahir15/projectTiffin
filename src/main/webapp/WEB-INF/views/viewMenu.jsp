<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>

<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>

</head>

<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="container">
	<table class="table table-striped">
		<tr>
			<th>Menu Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Image</th>
			<th>Ingredients</th>
			<security:authorize access="hasRole('ROLE_USER')">
			<th>action</th>
			</security:authorize>
		</tr>
		<c:forEach var="m" items="${mlist}">
			<tr>
				<td>${m.menuId}</td>
				<td>${m.name}</td>
				<td>${m.price}</td>
				<td>${m.img}</td>
				<td>${m.ingredients}</td>
				<td>
				
				<a href="deleteMenu/${m.menuId}"
					class="btn btn-danger btn-lg"
					onclick="return confirm('Are you sure?')">
         				 <span class="glyphicon glyphicon-trash"></span> Delete </a>
         				 <a href="editMenu?menuId=${m.menuId}"
					class="btn btn-info btn-lg">
         				 <span class="glyphicon glyphicon-trash"></span> Edit </a>
                                                
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="addMenu?vname=<security:authentication property="principal.username"/>" class="btn btn-info btn-lg">Add new Menu</a>
        </div>
        </body>

        </html>