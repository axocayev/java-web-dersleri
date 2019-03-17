<%-- 
    Document   : calc
    Created on : Mar 3, 2019, 12:41:29 PM
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
        <form method="POST"  action="getrequesteddat.jsp">
            Full name:<input  type="text" name="fullname" placeholder="Full name"><br>
            Email<input  type="email" name="email" placeholder="Your email"><br>
            Date <input type="date" name="date"><br>
            Password<input type="password" name="psw"><br>
            Gender<input type="radio" name="gender" value="male">Male
                  <input type="radio" name="gender" value="female">FeMale <br>
                 Your Age <input type="number"  name="age">
           <br>
            Driver LIcence:
            <input type="checkbox" name="B" value="B">B
             <input type="checkbox" name="C" value="C">C      
            <input type="checkbox" name="BC" value="BC">BC  <br>
             <input type="submit" value="Gonder">
        </form>
        
        
    </body>
</html>
