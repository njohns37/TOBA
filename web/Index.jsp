<%-- 
    Document   : Index
    Created on : Sep 25, 2019, 11:26:22 AM
    Author     : naden
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
    <html>
        <head>
            <title>TOBA Titan Online Banking Application</title>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        </head>
        <body>
        <h1>TOBA Titan Online Banking Application</h1>
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="New_customer.jsp">New Customer Application</a>
            <a href="Transaction.jsp">Transactions</a>    
        </body>
        
        <c:import url="/includes/footer.jsp" />
        
    </html>
