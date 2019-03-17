<%-- 
    Document   : triangle
    Created on : Mar 16, 2019, 3:37:54 PM
    Author     : anarx
--%>

<%@page import="az.webapp.Triangel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script>
            function  f(){
                alert("Cliekced....");
            }
            
        </script>
            
        
    </head>
    <body>
       
        <button onclick="f()" >Click me</button>
        
        <%
           Triangel  t=new Triangel();
        try{
            double a=Double.parseDouble(request.getParameter("a"));
            double b=Double.parseDouble(request.getParameter("b"));
            double c=Double.parseDouble(request.getParameter("c"));
            
           
            t.setA(a);
            t.setB(b);
            t.setC(c);
            
            out.print("<br>Area is  "+t.getArea());
            out.print("<br>Perimeter is  "+t.getPerimetr());
        }catch(Exception e){
            e.printStackTrace();
        }
        
        
        %>
          <form action=""  method="GET" >
            A:<input type="number" name="a" value="<% out.print(t.getA()); %>" ><br/>
            B:<input type="number" name="b" value="<% out.print(t.getB()); %>" ><br/>
            C:<input type="number" name="c" value="<% out.print(t.getC()); %>" ><br/>
            <input type="submit" value="Calculate">
            
        </form>
    </body>
</html>
