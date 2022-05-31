<%-- 
    Document   : LaptopsCost
    Created on : 27 May, 2022, 9:51:13 AM
    Author     : Khumaini
--%>

<%@page import="Webshopping.CartDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String[] laptops;
            CartDetails c = null;
        %>
        <%
            laptops = request.getParameterValues("laptops");
            if(laptops!=null){
                HttpSession httpSession = request.getSession(false);
                if(httpSession!=null){
                    c = (CartDetails)httpSession.getAttribute("cart");
                    c.setLaptop(laptops);
                    httpSession.setAttribute("cart", c);
                    response.sendRedirect("/WebShopping/internship.html");
                }
            }
        %>
    </body>
</html>
