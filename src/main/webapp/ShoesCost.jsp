<%-- 
    Document   : ShoesCost
    Created on : 26 May, 2022, 7:55:57 PM
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
        <%! String[] shoes;
            CartDetails c = null;
        %>
        
        <%
            shoes = request.getParameterValues("shoes");
            if(shoes!=null){
                HttpSession httpSession = request.getSession(false);
                if(httpSession!=null){
                    c = (CartDetails)httpSession.getAttribute("cart");
                    c.setShoe(shoes);
                    httpSession.setAttribute("cart", c);
                    response.sendRedirect("/WebShopping/internship.html");
                }
            }
        %>
    </body>
</html>
