<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<!DOCTYPE html>
        <html>
            <head>                
                <meta charset="UTF-8">
                <link rel="stylesheet" href="styles/main.css" type="text/css"/>
            </head>
            <body>
                <h1>TOBA Titan Online Banking</h1>
            <a href="index.jsp">Home</a>
            <a href="login.jsp">Login</a>
            <a href="Transaction.jsp">Transactions</a><br><br>
            
            <c:if test="${session.user != null}">
                <p>Hello${NewCustomerServlet.user.firstName}</p>
            </c:if>
            <c:if test="${session.user == null}">
                <p>Not Logged In</p>            
            </c:if>
            
                <p>Customer account information here:</p>
            </body>
            
            <c:import url="/includes/footer.jsp" />
           
        </html>
               