<%-- 
    Document   : Login
    Created on : Sep 25, 2019, 11:27:31 AM
    Author     : naden
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        </head>
        <body>
             <h1>TOBA Titan Online Banking</h1>
        
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="Transaction.jsp">Transactions</a>    
        
            <h2> Login Page </h2>
            <form action="Login" method="post">
                <input type="hidden" name="action" value="add">        
                <label class="pad_top">Username:</label>
                <input type="text" name="Usename"><br>
                <label class="pad_top">Password:</label>
                <input type="text" name="Password"><br>
                <label>&nbsp;</label>
                <input type="submit" value="Login" class="margin_left">
            </form>            
            <a href="password_reset.jsp"> Password Reset</a>
            <a href="New_customer.jsp">New Customer Application</a>
        </body>
        
        <c:import url="/includes/footer.jsp" />
        
    </html>