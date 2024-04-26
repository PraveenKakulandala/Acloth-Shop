<%@page import="tshirtPackage.connection.DbCon"%>
<%@page import="tshirtPackage.dao.ProductDao"%>
<%@page import="tshirtPackage.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());

List<Product> products = pd.getAllProducts();



%>
<!DOCTYPE html> 
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>ACloth</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your T-Shirt Shop</title>
   


</head>
<body> 
	


</body>
</html>