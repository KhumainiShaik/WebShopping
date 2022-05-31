<%-- 
    Document   : PhonesCost
    Created on : 27 May, 2022, 9:51:25 AM
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
       <%! String[] phones;
           CartDetails c = null;
        %>
        
        <%
            phones = request.getParameterValues("phones");
            if(phones!=null){
                HttpSession httpSession = request.getSession(false);
                if(httpSession!=null){
                    c = (CartDetails)httpSession.getAttribute("cart");
                    c.setPhone(phones);
                    httpSession.setAttribute("cart", c);
                    response.sendRedirect("/WebShopping/internship.html");
                }
            }
        %>
    </body>
</html>
