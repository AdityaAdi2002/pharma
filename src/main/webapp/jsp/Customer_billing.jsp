<%@page import="com.protech.pharmaplus.dto.Item"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.protech.pharmaplus.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Billing Page</title>
</head>
<body>
	<%
	Customer customer = (Customer) request.getAttribute("customer");
	String payment = (String) request.getAttribute("payment");
	double price = (double) request.getAttribute("price");
	%>
	<table>
	<tr>
		<th>Name</th>
		<th>Medicine name</th>
		<th>Quantity</th>
		<th>Price</th>
	</tr>
	
	<%for(Item item:customer.getCart().getItems()) {%>
	
	<tr>
	   <td><%=customer.getFname()+" "+customer.getLname()%></td>
	   <td><%=item.getName()%></td>
	   <td><%=item.getQuantity()%></td>
	   <td><%=item.getPrice()%></td>
	</tr>
	<%} %>
	</table>
	<h1>Totsl Price is : ${price} payment done thru ${payment }</h1>
	<button onclick="window.print()">print</button>
</body>
</html>