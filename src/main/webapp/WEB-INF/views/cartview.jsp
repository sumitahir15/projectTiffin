<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ page import="java.util.*"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	 <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Menu</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Price</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Quantity</div>
                  </th>
                   <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Sub Total</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Remove</div>
                  </th>
                </tr>
              </thead>
              <tbody>
              <c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.menu.price * item.quantity }"></c:set>
		
                <tr>
                  <th scope="row" class="border-0">
                    <div class="p-2">
                      <img src="${pageContext.request.contextPath }/resources/img/${item.menu.img }" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0">${item.menu.name }</h5><span class="text-muted font-weight-normal font-italic d-block">Vendor Id:${item.menu.vendorid }</span>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong>&#8377;${item.menu.price }</strong></td>
                  <td class="border-0 align-middle"><strong>${item.quantity }</strong></td>
                   <td class="border-0 align-middle"><strong>&#8377;${item.menu.price * item.quantity }</strong></td>
                  <td class="border-0 align-middle"><a href="${pageContext.request.contextPath }/remove?menuId=${item.menu.menuId }"
					onclick="return confirm('Are you sure?')" class="text-dark"><i class="fa fa-trash"></i></a></td>
                 <c:set var="menuId" value="${item.menu.menuId}" scope="session"></c:set> 
				 <c:set var="qty" value="${item.quantity}" scope="session"></c:set> 
                
                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
          
        </div>
      </div>

      <div class="row py-5 p-4 bg-white rounded shadow-sm">
    
        <div class="col-lg-6">
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
          <div class="p-4">
            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
            <ul class="list-unstyled mb-4">
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>&#8377;${total }</strong></li>
              
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                <h5 class="font-weight-bold">&#8377;${total }</h5>
              </li>
            </ul><a href="txnTest?cname=<security:authentication property="principal.username"/>" class="btn btn-success rounded-pill py-2 btn-block">Procceed to checkout</a>
<a href="${pageContext.request.contextPath }/menu" class="btn btn-info rounded-pill py-2 btn-block">Continue Shopping</a>
<c:set var="amt" value="${total }" scope="session"></c:set> 
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
</body>
</html>