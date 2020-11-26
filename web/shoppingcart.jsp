<%-- 
    Document   : shoppingcart
    Created on : Nov 25, 2020, 11:29:15 PM
    Author     : poohsu
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.CartTable"%>
<%@page import="java.util.List"%>
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
        <div>
            <br><br><h1>Shopping Cart</h1><br>
            <div>
                <div>
                    <div>    
                        <button style="margin-left:67px; width: 210px" type="button" onclick="window.location.href = '/OnlineShoppingCart/index'">Back to Catalog</button>
                    </div>

                </div><br>
                <table>
                    <thead>
                        <tr>
                            <th>DVD Names</th>
                            <th>Rate</th>
                            <th>Year</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (itr.hasNext()) {
                                out.println("<form name=\"RemovefromCart\" method=\"post\" action=\"RemoveController\">");
                                cart = itr.next();
                                out.println("<tr>");
                                out.println("<td hidden><input type=\"number\" name=\"id\" value=" + cart.getId() + "></input></td>");
                                out.println("<td> " + cart.getIdCatalog().getName() + "</td>");
                                out.println("<td> " + cart.getIdCatalog().getRate() + "</td>");
                                out.println("<td> " + cart.getIdCatalog().getYears() + "</td>");
                                out.println("<td> " + cart.getIdCatalog().getPrice() + "</td>");
                                out.println("<td> " + cart.getQuantity() + "</td>");
                                out.println("<td><button type=\"submit\" name=\"remove\"><i class=\"fa fa-trash\" aria-hidden=\"true\"></i>Remove</button></td>");
                                out.println("</tr>");
                                out.println("</form>");
                            }
                        %>
                    </tbody>
                </table>
                    <div>    
                        <button style="margin-left:100px; width: 135px" type="button" onclick="window.location.href = '/OnlineShoppingCart/CheckoutController'">Check out</button>
                    </div>
            </div>
        </div>
    </body>
</html>
