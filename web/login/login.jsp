<%-- 
    Document   : login
    Created on : May 5, 2019, 12:17:24 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
    <center>
        
        <p > ${error} </p>
        <form action='<c:out value="${pageContext.servletContext.contextPath}/login/" ></c:out>' 
              method="POST">
            Username :<input type="text" name='username'><br>
            Password : <input type="password" name="password"><br>
            <input type="submit" value="Login">
        </form> 

    </center>

</body>
</html>
