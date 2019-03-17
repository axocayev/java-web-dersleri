<%-- 
    Document   : coretags
    Created on : Mar 17, 2019, 11:39:25 AM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <c:set scope="session" var="price" value="${400*5}"></c:set>
        <c:set scope="session" var="net" value="${200*5}"></c:set>

<!--        <input name="price" value="<c:out value="${price}"/>" type="text">-->
        
        <c:out value="${price}"/><br>
        
        <c:out value="Saiq Huseynzade"/>
        
        <c:if test="${price<net}">
            <p>  Price is great :  <c:out value="${price}"/></p>
        </c:if>
            
            
        <hr>
        <c:set var="season" value="7" scope="session"></c:set>
        <c:choose>
            <c:when test="${season == 1}">
                <p>Winter</p>
            </c:when>  
            <c:when test="${season == 2}">
                <p>Spring</p>
            </c:when>
             <c:when test="${season == 3}">
                <p>Summer</p>
            </c:when>
             <c:when test="${season == 4}">
                <p>Fall</p>
            </c:when>
            <c:otherwise>
                
                 <p>Wrong number for season</p>
            </c:otherwise>
        </c:choose>   
                 
                 
          <hr>
          
        <c:forEach var="i" begin="1" end="10">
            <c:out value="${i}"></c:out>
        </c:forEach>
            
          
     <hr>
     <c:forTokens items="Anar Saiq Kamal Kamran" delims=" " var="name">  
         <c:out value="${name}"/><p>  
     </c:forTokens> 
             
             <c:url value="http://localhost:8080/WebApp1/triangle.jsp" var="completeURL">  
                 <c:param name="a" value="6"/>  
                 <c:param name="b" value="7"/>  
                 <c:param name="c" value="8"/>  
              </c:url>  
       ${completeURL}  

  
             
    </body>
</html>
