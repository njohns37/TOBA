<%-- 
    Document   : New_customer
    Created on : Aug 27, 2019, 10:49:11 PM
    Author     : naden
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Customer</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
    <h1>TOBA Titan Online Banking</h1>
        <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="login.html">Login</a></li>
        <li><a href="New_customer.jsp">New Customer Application</a>
        <li><a href="Transaction.html">Transactions</a></li>    
        </ul>
        <h2>Register</h2>
        <p><i>${message}</i></p>
        <form action="New Customer" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">First Name:</label>
        <input type="text" name="FirstName" value="${user.FirstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="LastName" value="${user.LastName}"><br>
        <label class="pad_top">Phone:</label>
        <input type="text" name="Phone" value="${user.Phone}"><br>
        <label class="pad_top">Address:</label>
        <input type="text" name="Address" value="${user.Address}"><br>
        <label class="pad_top">City:</label>
        <input type="text" name="City" value="${user.City}"><br>
        <label class="pad_top">State:</label>
        <input type="text" name="State" value="${user.State}"><br>
        <label class="pad_top">Zipcode:</label>
        <input type="text" name="Zipcode" value="${user.Zipcode}"><br>
        <label class="pad_top">Email:</label>
        <input type="text" name="Email" value="${user.Email}"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
    </body>
</html>
