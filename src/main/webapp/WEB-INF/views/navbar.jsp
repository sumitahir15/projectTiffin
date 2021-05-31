 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.demo.model.User" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<nav class="navbar navbar-expand-lg navbar-light bg-info">
  <a class="navbar-brand" href="home">Online Tiffin</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
      </li>
     
    	  <security:authorize access="hasRole('ROLE_USER')">
      <li class="nav-item">
        <a class="nav-link" href="vendor">Vendors</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="menu">Menu</a>
      </li>
    
      </security:authorize>
      <security:authorize access="hasRole('ROLE_ADMIN')">
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Orders
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="viewOrders">View All Orders</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Customer
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="viewCust">View Customer</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Vendor
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="viewVendor">View Vendors</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="viewMenu">View Menu</a>
          <a class="dropdown-item" href="1">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
	
	   </security:authorize>
	   
      <security:authorize access="hasRole('ROLE_VENDOR')">
       <li class="nav-item">
        <a class="nav-link" href="viewMenuVendor?vname=<security:authentication property="principal.username"/>">view Menu</a>
    
	   </security:authorize>
    
    </ul>
    <ul class="navbar-nav ml-auto">

    	  
    	   <security:authorize access="!isAuthenticated()">
      <li class="nav-item active">
        <a class="nav-link" href="login">Sign In </a>
      </li>
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Sign Up
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="userReg">As User</a>
          <a class="dropdown-item" href="vendorReg">As Vendor</a>
          <!-- <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div> -->
      </li>
      </security:authorize>
     
         <security:authorize access="hasRole('ROLE_USER')">
         <li class="nav-item">
     <a class="nav-link" href="cartview">Cart 
     
	 </a>
      </li>
      </security:authorize>
      <security:authorize access="isAuthenticated()">
     <li class="nav-item ">
     <a class="nav-link" href="logout">Logout(</a><security:authentication property="principal.username"/>)
      </li>
      </security:authorize>
    </ul>
  </div>
</nav>