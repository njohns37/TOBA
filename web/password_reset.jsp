<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8"> 
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>TOBA Titan Online Banking</h1>
        <a href="index.html">Home</a>
        <a href="login.jsp">Login</a>
        <a href="Transaction.html">Transactions</a><br><br>
        <h2>Password Reset</h2>
        <form action="/PasswordResetServlet" method="post">
        
        </form>
    </body>
    
    <c:import url="/includes/footer.jsp" />
    
</html>
