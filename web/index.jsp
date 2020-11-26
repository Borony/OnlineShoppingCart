<%-- 
    Document   : index
    Created on : Nov 25, 2020, 11:06:54 PM
    Author     : poohsu
--%>


<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.CatalogTable"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Model.Catalog"%>
<%@page import="Model.Catalog"%>
<%@page import="Model.Catalog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="catalog" class="Model.Catalog" scope="request"/>
    <%
        List<Catalog> catalogList = CatalogTable.findAllCatalog();
        Iterator<Catalog> itr = catalogList.iterator();
    %>
    <body>

        <h1>DVD Catalog</h1><br>
             <div>    
                  <button style="margin-left:150px" type="button"  onclick="document.location = 'shoppingcart.jsp'">Shopping Cart</button>
             </div>
        <table>
            <thead>
                <tr>
                    <th>DVD Names</th>
                    <th>Rate</th>
                    <th>Year</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>AddCart</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (itr.hasNext()) {
                        out.println("<form name=\"AddToCart\" method=\"post\" action=\"AddController\">");
                        catalog = itr.next();
                        out.println("<tr>");
                        out.println("<td hidden><input type=\"number\" name=\"idCatalog\" value=" + catalog.getId() + "></input></td>");
                        out.println("<td> " + catalog.getName() + "</td>");
                        out.println("<td> " + catalog.getRate() + "</td>");
                        out.println("<td> " + catalog.getYears() + "</td>");
                        out.println("<td> " + catalog.getPrice() + "</td>");
                        out.println("<td><input type=\"number\" name=\"quantity\" placeholder=\"Enter Quantity\"></input></td>");
                        out.println("<td><button type=\"submit\" name=\"addtocart\" id=\"button\">AddToCart</button></td>");
                        out.println("</tr>");
                        out.println("</form>");
                    }
                %>
            <tbody>
        </table>    
    </div>
</body>
</html>
