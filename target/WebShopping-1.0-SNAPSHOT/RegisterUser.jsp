<%-- 
    Document   : RegisterUser
    Created on : 25 May, 2022, 10:23:34 AM
    Author     : Khumaini
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="ConnStr" driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/webshopping?allowPublicKeyRetrieval=true&useSSL=false"
                           user="root" password="KhumainiShaik@1011"/>
        <sql:update dataSource="${ConnStr}">
            insert into users values('${RegBean.userName}','${RegBean.password}',${RegBean.age},'${RegBean.city}','${RegBean.phone}','${RegBean.email}');
        </sql:update>
        <b style="background-color:pink;">Registration Complete. Please login to continue shopping.</b>
        <%@include file="Loginhtmlpage.html"%>
    </body>
</html>
