<%-- 
    Document   : Success
    Created on : Sep 24, 2019, 8:52:06 PM
    Author     : naden
--%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:import url="/includes/header.html" />
<!DOCTYPE html>
<html>
    <head>
        <title>TOBA Success</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>TOBA Titan Online Banking</h1>
        <a href="index.jsp">Home</a>
        <a href="login.jsp">Login</a>
        <a href="Transaction.jsp">Transactions</a>
        
        <p>This account has been successfully created</p>
 
        <label>Username:</label>
        <span>${user.username}</span><br>
        <label>Password:</label>
        <span>${user.password}</span><br>
        <label>First Name:</label>
        <span>${user.firstName}</span><br>
         <label>Last Name:</label>
        <span>${user.lastName}</span><br>
        <label>Phone:</label>
        <span>${user.phone}</span><br>
        <label>Address:</label>
        <span>${user.address}</span><br>
         <label>City:</label>
        <span>${user.city}</span><br>
        <label>State:</label>
        <span>${user.state}</span><br>
        <label>Zipcode:</label>
        <span>${user.zipcode}</span><br>
        <label>Email:</label>
        <span>${user.email}</span><br>

    </body>
    <c:import url="/includes/footer.jsp" />
</html>
