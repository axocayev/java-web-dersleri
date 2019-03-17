<%-- 
    Document   : triangle2
    Created on : Mar 16, 2019, 4:08:14 PM
    Author     : anarx
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function  calc(){
                var a=document.getElementById("a").value;
                var b=document.getElementById("b").value;
                var c=document.getElementById("c").value;
                
              /*  var a='5';
                var b='4';
                var c='3';
                alert(a+b+c);*/
                var perim= (parseInt(a)+parseInt(b)+parseInt(c));
                var p2=perim/2;    
                var area=Math.sqrt(p2*(p2-a)*(p2-b)*(p2-c));
        
                document.getElementById("perim").innerHTML='Perimeter '+perim;
                document.getElementById("area").innerHTML='Area  '+area ;
                
    }
        </script>
    </head>
    <body>
          
            A:<input type="number" name="a" id="a" ><br/>
            B:<input type="number" name="b" id="b" ><br/>
            C:<input type="number" name="c"  id="c"><br/>
            <button  value="Calculate"  onclick ="calc()">Calculate</button><br>
             <p id="perim"></p> 
             <p id="area">oisiuygej</p>  
       
    </body>
</html>
