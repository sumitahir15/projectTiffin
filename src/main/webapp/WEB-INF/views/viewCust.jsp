<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
			<th>Cust Id</th>
			<th>First Name</th>
			<th>Last Name</th>	
			<th>Address</th>
			<th>Contact</th>
			<th>Email</th>
			<th>User Name</th>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<th>action</th>
			</security:authorize>
		</tr>
		<c:forEach var="c" items="${clist}">
			<tr>
				<td>${c.id}</td>
				<td>${c.fname}</td>
				<td>${c.lname}</td>
				<td>${c.address}</td>
				<td>${c.mobile}</td>
				<td>${c.email}</td>
				<td>${c.username}</td>
				<td>
				
				<a href="deleteCust/${c.id}"
					class="btn btn-danger btn-lg"
					onclick="return confirm('Are you sure?')">
         				 <span class="glyphicon glyphicon-trash"></span> Delete </a>
         				 <a href="editCust?custId=${c.id}"
					class="btn btn-info btn-lg">
         				 <span class="glyphicon glyphicon-trash"></span> Edit </a>
                                                
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="addCust" class="btn btn-info btn-lg">Add new Cust</a>
       </div>
        </body>

        </html>