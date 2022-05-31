<%-- 
    Document   : ShirtsCost
    Created on : 26 May, 2022, 7:18:42 PM
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
        <%! String[] shirts;
            CartDetails c;
        %>
        <%
            shirts = request.getParameterValues("shirts");
            if(shirts!=null){
                HttpSession httpSession = request.getSession(false);
                if(httpSession!=null){
                    c = (CartDetails)httpSession.getAttribute("cart");
                    c.setShirt(shirts);
                    httpSession.setAttribute("cart", c);
                    response.sendRedirect("/WebShopping/internship.html");
                }
            }
        %>
    </body>
</html>
