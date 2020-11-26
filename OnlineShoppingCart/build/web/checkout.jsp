<%-- 
    Document   : checkout
    Created on : Nov 25, 2020, 11:43:41 PM
    Author     : poohsu
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Model.CartTable"%>
<%@page import="Model.CartTable"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="cart" class="Model.Cart" scope="request"/>
    <%
        List<Cart> cartList = CartTable.findAllCart();
        Iterator<Cart> itr = cartList.iterator();
    %>

    <body>
        <br><br>
            <h1>Your Order is Confirmed!</h1>
    
     <h1><%= "The total amount is $" + request.getAttribute("totalAmount")%></h1>
    </body>
</html>
