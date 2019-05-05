<%-- 
    Document   : profile
    Created on : May 5, 2019, 12:34:02 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        User name <c:out value="${u}"></c:out><br>
        Password <c:out value="${p}"></c:out><br>
                <a href="logoff">Logoff</a>


            </body>
        </html>
