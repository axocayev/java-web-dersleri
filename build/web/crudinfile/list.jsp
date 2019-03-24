<%-- 
    Document   : list
    Created on : Mar 23, 2019, 4:28:49 PM
    Author     : anarx
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="az.phonebook.fileop.FileOperation"%>
<%@page import="az.phonebook.model.PhoneBook"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>

        <div class="container">
            <h3>All Conatct</h3>
            <table class="table table-hover table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ad</th>
                        <th>Soyad</th>
                        <th>Email</th>
                        <th>Telefon</th>
                        <th>Adres</th>
                        <th>Update </th>
                        <th>Delete </th>
                    </tr>
                </thead>
                <tbody>
                    <% FileOperation fo = new FileOperation();
                        List<PhoneBook> list = fo.getAllPhoneBook();
                        pageContext.setAttribute("list", list);
                    %>
                    
                    <c:forEach items="${list}" var="pb">
                        <tr>
                            <td> <c:out value="${pb.getId()}"></c:out></td>  
                            <td> <c:out value="${pb.getName()}"></c:out></td>  
                            <td> <c:out value="${pb.getSurname()}"></c:out></td>  
                            <td> <c:out value="${pb.getEmail()}"></c:out></td>  
                            <td> <c:out value="${pb.getPhone()}"></c:out></td>  
                            <td> <c:out value="${pb.getAddress()}"></c:out></td>  
                            <td> <a href="newphonebook.jsp?pid=${pb.getId()}" class="btn btn-primary">Update</a></td>  
                            <td> <a href="delete.jsp?pid=${pb.getId()}" 
                                    class="btn btn-danger"
                                    onclick="return confirm('Are you sure?');">Delete</a></td>  
                            </tr>    
                    </c:forEach>    


                </tbody>

            </table>
                         <a href="newphonebook.jsp">Add new contact</a>
        </div>
               
    </body>
</html>
