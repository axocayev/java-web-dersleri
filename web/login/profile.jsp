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
        ID <c:out value="${user.getId()}"></c:out><br>
        NAme <c:out value="${user.getName()}"></c:out><br>
        SurNAme <c:out value="${user.getSurname()}"></c:out><br>
        Status <c:out value="${user.getStatus()}"></c:out><br>
        
                <a href="logoff">Logoff</a>


            </body>
        </html>
