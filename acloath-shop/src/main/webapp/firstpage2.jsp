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
<body style="background-image: url('product-images/222.jpg'); background-size:contain ; background-position: center;   " >
	<%@include file="/includes/navbar.jsp"%>
	<a href="index.jsp" style="font-family: Arial, sans-serif; margin: 0; padding: 0;  display: flex; justify-content: center; align-items: center; height: 100vh;"><button style="padding: 15px 30px; font-size: 18px; background-color: black; color: white; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s;" >Shop Now</button></a>
	
	
	
	
		<%@include file="/includes/footer.jsp"%>
	
	


</body>
</html>