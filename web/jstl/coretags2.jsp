<%-- 
    Document   : coretags2
    Created on : Mar 17, 2019, 12:33:03 PM
    Author     : anarx
--%>

<%@page import="az.jstltags.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
     
       
        <%
            Student st1=new Student("Anar","Xocayev",25);
            Student st2=new Student("Saiq","Huseyzade",100);
            Student st3=new Student("Kamal","Aliyev",35);
            Student st4=new Student("Samir","Agayev",75);
            Student st5=new Student("Gunel","Agayeva",95);
            ArrayList<Student> st=new ArrayList<Student>();
            st.add(st1);
            st.add(st2);
            st.add(st3);
            st.add(st4);
            st.add(st5);
    
          pageContext.setAttribute("students", st);
        %>
            
        <div class="container">
  <h2>All Students and their points</h2>
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Point</th>
      </tr>
    </thead>
     <tbody>
         <c:forEach var="student"  items="${students}">
        
          <c:choose>    
             <c:when test="${ student.getPoint() > 50 }"> 
                  <tr  class="success">
             </c:when>
             <c:when test="${student.getPoint()< 50}"> 
                  <tr  class="danger">
             </c:when>
         </c:choose>
            <td> <c:out value="${student.getName()}"></c:out></td>
            <td> <c:out value="${student.getSurname()}"></c:out></td>
            <td> <c:out value="${student.getPoint()}"></c:out></td>
            
        </tr>
    </c:forEach>
   
    </tbody>
  </table>
</div> 
        
    </body>
</html>
