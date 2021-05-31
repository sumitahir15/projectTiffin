<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.*" %>  
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%
 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
	session.setAttribute("ordId", randomInt);
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Merchant Check Out Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Evrsoft First Page">
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="col-md-12 text-center">
	<h1>Merchant Check Out Page</h1>
	</div>
	<pre>
	</pre>
	<div class="container ">
	<form  method="post" action="pgRedirect">
  <div class="form-group">
				<label>ORDER_ID:-</label>
					<input class="form-control" id="ORDER_ID" tabindex="1" maxlength="20" size="20"
						name="ORDER_ID" autocomplete="off"
						value="ORDS_${ordId}" readonly>
						
					</div>
					  <div class="form-group">
					<label>CUSTID:-</label>
					<<input class="form-control" id="CUST_ID" tabindex="2" maxlength="30" size="12" name="CUST_ID" autocomplete="off" value="${custid }" readonly>
				</div>
				  <div hidden class="form-group">
				<label>INDUSTRY_TYPE_ID:-</label><input class="form-control" id="INDUSTRY_TYPE_ID" tabindex="4" maxlength="12" size="12" name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">
			</div>
			  <div hidden class="form-group">	
				<label>Channel:-</label>
					<input class="form-control" id="CHANNEL_ID" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
				</div>
				  <div class="form-group">
				<label>Txn Amount:-</label>
					<input class="form-control" title="TXN_AMOUNT" tabindex="10"
						type="text" name="TXN_AMOUNT"
						value="${amt}" readonly>
				</div>
				<div class="col-md-12 text-center">
				<input class="btn btn-primary" value="CheckOut" type="submit" >
				</div>
			</form>
	
  </div>

      
   
   
</body>
</html>