<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.io.File" %>
<%--
Created by IntelliJ IDEA.
  User: User
  Date: 12.12.2019
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Вхід</title>

</head>
<body>
<form action="index.jsp" method="GET">
<%!
    private javax.servlet.http.HttpServletRequest req;
final String TRUE_WAY="Test.jsp";
final String FALSE_WAY="Error.html";
String rez=" ";

String login;
String parol;
String name;
String surname;
int count=0;
%>


<h1>Вхід</h1>

    <p>
    <label for="логин">Логин</label>
    <input type="text"  name="логин" id="логин">
</p>
<p>
    <label for="пароль">Пароль</label>
    <input  type="password"  name="пароль" id="пароль">
</p>

<button type="submit">Підтвердити</button>

    <%




       if("GET".equals(request.getMethod())){
        //req.getParameter("логин")!=null && req.getParameter("пароль")!=null   &&
        if( request.getParameter("логин")!=null && request.getParameter("пароль")!=null   && request.getParameter("логин").equals("admin") && request.getParameter("пароль").equals("admin")    ) {
//rez = "Test.jsp";
            count=0;
            request.setAttribute("n",request.getParameter("логин"));
            response.sendRedirect("Test.jsp");
            }else {
            if(count>=1){
                rez="Невірний пароль!";
            }
                count++;
               // response.sendRedirect("Error.html");
            }}else rez="lol";





    %>

<p style="color:red;"><%=rez%></p>





</form>
</body>


</html>