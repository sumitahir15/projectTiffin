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
			<th>Vendor Id</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Address</th>
			<th>Email</th>
			<th>User Name</th>
			<security:authorize access="hasRole('ROLE_ADMIN')">
			<th>action</th>
			</security:authorize>
		</tr>
		<c:forEach var="v" items="${vlist}">
			<tr>
				<td>${v.id}</td>
				<td>${v.name}</td>
				<td>${v.mobile}</td>
				<td>${v.address}</td>
				<td>${v.email}</td>
				<td>${v.username}</td>
				<td>
				
				<a href="deleteVendor/${v.id}"
					class="btn btn-danger btn-lg"
					onclick="return confirm('Are you sure?')">
         				 <span class="glyphicon glyphicon-trash"></span> Delete </a>
         				 <a href="editVendor?vId=${v.id}"
					class="btn btn-info btn-lg">
         				 <span class="glyphicon glyphicon-trash"></span> Edit </a>
                   <a href="enableVendor/${v.id}"
					class="btn btn-danger btn-lg"
					onclick="return confirm('Are you sure?')">
         				 <span class="glyphicon glyphicon-trash"></span> Enable </a>
         				 <a href="disableVendor/${v.id}"
					class="btn btn-info btn-lg">
         				 <span class="glyphicon glyphicon-trash"></span> Disable</a>
                                                
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="addVendor" class="btn btn-info btn-lg">Add new Vendor</a>
        </div>
        </body>

        </html>