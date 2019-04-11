<%-- 
    Document   : view
    Created on : Apr 7, 2019, 3:38:58 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     Welcome,   <c:out  value="${name}"></c:out>  <c:out  value="${surname}"></c:out>
     <br>
     <c:forEach  var="pb" items="${PBList}" >
         <c:out value="${pb.getId()}"></c:out>
         <c:out value="${pb.getName()}"></c:out>
         <c:out value="${pb.getSurname()}"></c:out>
         <br>
     </c:forEach>
    
    </body>
</html>
