<%-- 
    Document   : testMethod
    Created on : Apr 7, 2019, 3:04:54 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="http://localhost:8080/WebApp1/PhonebookController"
              method="POST" enctype='multipart/form-data'>
            Username :<input type="text" name="username"><br>
            Password:<input type="password" name="password"><br>
            File :<input type ="file" name="filename"><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
