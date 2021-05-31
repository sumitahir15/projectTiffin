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
			<th>Order Id</th>
			<th>Customer ID</th>
			<th>Order Date</th>
			<th>Total Amount</th>
			<th>Menu id</th>
			<th>Quntity</th>
			<th>pid</th>
			<th>date</th>
			<th>pst</th>
			<th>action</th>
			
		</tr>
		<c:forEach var="o" items="${olist}">
			<tr>
				<td>${o.orderId}</td>
				<td>${o.customerId}</td>
				<td>${o.orderdate}</td>
				<td>${o.totalamount}</td>
				<td>${o.menuId}</td>
				<td>${o.quantity }</td>
				<td>${o.paymentId }</td>
				<td>${o.date }</td>
				<td>${o.paymentStatus }</td>
				<td>
				
				<a href="deleteOrder/${o.orderId}"
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
           </div>
        </body>

        </html>