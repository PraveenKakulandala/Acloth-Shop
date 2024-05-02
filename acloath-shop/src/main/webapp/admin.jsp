<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%@page import="tshirtPackage.connection.DbCon"%>
<%@page import="tshirtPackage.dao.ProductDao"%>
<%@page import="tshirtPackage.model.*"%>
<%@page import="java.util.*"%>


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


  <style>
  		
      body {
  background-color: black; /* Set background color */
  font-family: Arial, sans-serif; /* Set font family */
}

h1 {
  text-align: center; /* Center align the heading */
  color: white; /* Set text color to white */
  background-color: #333; /* Set background color for the heading */
  padding: 20px; /* Add padding around the heading */
}

a {
  display: block; /* Display links as block elements */
  text-decoration: none; /* Remove underline from links */
  color: #333; /* Set text color for links */
  padding: 10px; /* Add padding around the links */
  margin: 10px; /* Add margin around the links */
  background-color: #fff; /* Set background color for links */
  border: 1px solid #333; /* Add border around the links */
  border-radius: 5px; /* Add border radius to make links rounded */
}

a:hover {
  background-color: #333; /* Change background color on hover */
  color: #fff; /* Change text color on hover */
}

    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1 style="text-align: center; color:white;" >Admin Panel</h1><br>
  
  <a href="addProduct.jsp">Add Product</a><br>
    <br><a href="removeProduct.jsp">Remove Product</a>
  
</body>
</html>