<%@ page import="javax.xml.ws.RequestWrapper" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 12.12.2019
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Test</title>
    <meta charset="UTF-8">
</head>
<body>
<form action="Test.jsp" method="post" name="inputpage">

    <p>
      Введіть дані про себе :
    </p>

    <p>
        <label for="name">Ім'я</label>
        <input type="text"   name="name" id="name">
    </p>

    <p>
        <label for="surname">Прізвище</label>
        <input type="text"  name="surname" id="surname">
    </p>


<p>Вам подобається програмувати?</p>
<div>
    <p> <input type="radio"  id="contactChoice1"
           name="contact" value="Yes">
    <label for="contactChoice1">Yes</label>
    </p>
   <p> <input type="radio" id="contactChoice2"
           name="contact" value="No">
    <label for="contactChoice2">No</label>
    </p>

</div>
<p>Якою мовою програмування ви користуєтесь?</p>
<div>
    <p>  <input type="radio" id="contactChoice3"
           name="contact1" value="Java">
    <label for="contactChoice3">Java</label>
    </p>
    <p><input type="radio" id="contactChoice4"
           name="contact1" value="C++">
    <label for="contactChoice4">C++</label>
    </p>
    <p> <input type="radio" id="contactChoice5"
           name="contact1" value="HTML =))))))))">
    <label for="contactChoice5">HTML =))))))XD</label>
    </p>

<%

    String firstQ = request.getParameter("contact");
    String secondQuestion = request.getParameter("contact1");
    String na = request.getParameter("name");
    String surname= request.getParameter("surname");


            if ("Yes".equals(firstQ)) {
                ++yes;
            }else if("No".equals(firstQ)){
                ++no;
            }

            if("Java".equals(secondQuestion)){
                ++java;
            }else if("C++".equals(secondQuestion)){
                ++cpp;
            }else if("HTML =))))))))".equals(secondQuestion)){
                ++html;
            }

    session.setAttribute("name" ,na);
    session.setAttribute("surname",surname);

%>

</div>

<%!

    int  yes=0;
   int no=0;
   int java=0;
   int cpp=0;
   int html=0;

%>


 <%


session.setAttribute("yes",yes);
    session.setAttribute("no",no);
    session.setAttribute("Java",java);
    session.setAttribute("C++",cpp);
    session.setAttribute("HTML",html);

%>

    <p>
    <p>
  <INPUT TYPE="submit" Value="Submit" NAME="submit" title="Click to submit"  onclick="alert('Дякуємо за проходження теста!!!')" >
    <p>    <a href="statistics.jsp">Переглянути статистику</a> </p>
    <p>    <a style="color: red" href="index.jsp">Вихід</a> </p>




</form>
</body>
</html>
