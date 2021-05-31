<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="paytm_java.PaytmConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.demo.model.*,com.demo.service.*,com.paytm.pg.merchant.CheckSumServiceHelper"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%
Enumeration<String> paramNames = request.getParameterNames();

Map<String, String[]> mapData = request.getParameterMap();
TreeMap<String,String> parameters = new TreeMap<String,String>();
String paytmChecksum =  "";
while(paramNames.hasMoreElements()) {
	String paramName = (String)paramNames.nextElement();
	if(paramName.equals("CHECKSUMHASH")){
		paytmChecksum = mapData.get(paramName)[0];
	}else{
		parameters.put(paramName,mapData.get(paramName)[0]);
	}
}
boolean isValideChecksum = false;
String outputHTML="";
Object output="";
String ORDERID="";
String STATUS="";
String TXNAMOUNT="";
String TXNDATE="";
String TXNID="";
ORDERID=	parameters.get("ORDERID");
STATUS=parameters.get("STATUS");
TXNAMOUNT=parameters.get("TXNAMOUNT");
TXNDATE=parameters.get("TXNDATE");	
TXNID=parameters.get("TXNID");

try{
	isValideChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(PaytmConstants.MERCHANT_KEY,parameters,paytmChecksum);
	 	
	if(isValideChecksum && parameters.containsKey("RESPCODE")){
		
		if(parameters.get("RESPCODE").equals("01")){
			outputHTML = parameters.toString();
			
		}else{
			outputHTML="<b>Payment Failed.</b>";
			 STATUS=parameters.get("STATUS");
			
			 
		}
	}else{
		
		
		outputHTML="<b>Checksum mismatched.</b>";
		 STATUS=parameters.get("STATUS");
		 
	}
	
}catch(Exception e){
	outputHTML=e.toString();
	

}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

	<div class="container">
 <table class="table">
   
    <tbody>
      <tr>
        <td>ORDERID</td>
        <td><%=ORDERID %>Doe</td>
      </tr>
      <tr>
        <td>STATUS</td>
        <td><%= STATUS%></td>
      </tr>
      <tr>
        <td>TXNAMOUNT</td>
        <td><%=TXNAMOUNT %></td>
      </tr>
      <tr>
        <td>TXNDATE</td>
        <td><%=TXNDATE %></td>
      </tr>
     
    </tbody>
  </table>


<a href="${pageContext.request.contextPath }/menu" class="btn btn-info rounded-pill py-2 btn-block">Continue Shopping</a>
</div>
<%-- <%OrderService ord=new OrderServiceImpl();
ord.savePayment(TXNID, ORDERID, TXNAMOUNT, STATUS);
%> --%>
</body>
</html>