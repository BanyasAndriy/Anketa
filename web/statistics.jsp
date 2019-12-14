<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 13.12.2019
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Статистика</title>
    <meta charset="UTF-8">
</head>
<body>
<%!
    String yes ;
    String no;
    String java;
    String cpp;
    String html;
    String name;
    String surname;
%>

<%
    yes = session.getAttribute("yes").toString();
    no = session.getAttribute("no").toString();
    java = session.getAttribute("Java").toString();
    cpp = session.getAttribute("C++").toString();
    html=session.getAttribute("HTML").toString();
    if(session.getAttribute("name")==null){
        name="user";
    }else {
        name = session.getAttribute("name").toString();
    }

    if(session.getAttribute("surname")==null){
        surname="user";
    }else {
        surname = session.getAttribute("surname").toString();
    }
%>
<form method="post" action="Test.jsp">

<h1><%=name+" "+surname+" - " %>останній користувач ,який проголосував!!!!</h1>


<h1>Загальна статистика : </h1>

<p><h3>Результати першого запитання!!!</h3></p>
<table border="1">
    <tr>
        <th>Yes</th>
        <th>No</th>
    </tr>
    <tr>
        <td>
            <%=yes
            %></td>
        <td> <%= no%> </td>
        </td>
    </tr>
</table>

<p><h3>Результати другого запитання!!!</h3></p>
<table border="1">
    <tr>
        <th>JAVA</th>
        <th>C++</th>
        <th>HTML=)))<</th>
    </tr>
    <tr>
        <td><%=java%></td>
        <td><%= cpp%></td>
        <td><%= html%></td>
    </tr>
</table>

    <p><a href="Test.jsp.jsp"><button>Вернутись до тестування</button></a></p>
    <a href="index.jsp" style="color: red">Вихід</a>

</form>

</body>
</html>
