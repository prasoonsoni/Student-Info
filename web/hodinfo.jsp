
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOD Info</title>
    </head>
    <body>
    <center>
        <h1>Your Personal Information</h1>
        <jsp:useBean id = "student" class = "student.Student" scope="session"/> 
        <% 
            out.println("<b>Registration Number : </b>"+student.getRegistration_number()+"<br>"+"<br>");
            out.println("<b>Name : </b>"+student.getName()+"<br>"+"<br>");
            out.println("<b>Programme : </b>"+student.getProgramme()+"<br>"+"<br>");
            out.println("<b>Year Of Admission : </b>"+student.getYear_of_admission()+"<br>"+"<br>");
        %>
        <h1>Your HOD Information</h1>
        <%
            out.println("<b>HOD name : </b>"+student.getHod()+"<br>"+"<br>");
        %>
        <input type="button" value="Hide HOD Info" onclick="history.back()">
        <br><br>
        <a href="./index.jsp">Go to Home</a>
    </center>
    </body>
</html>
