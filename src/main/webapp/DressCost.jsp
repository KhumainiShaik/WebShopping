<%-- 
    Document   : DressCost
    Created on : 27 May, 2022, 9:50:38 AM
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
        <%! String[] dress;
            CartDetails c;
        %>
        <%
            dress = request.getParameterValues("dress");
            if(dress!=null){
                HttpSession httpSession = request.getSession(false);
                if(httpSession!=null){
                    c = (CartDetails)httpSession.getAttribute("cart");
                    c.setDress(dress);
                    httpSession.setAttribute("cart", c);
                    response.sendRedirect("/WebShopping/internship.html");
                }
            }
        %>
    </body>
</html>
