<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Info</title>
    </head>
    <body>
    <center>
        <h1>Your Personal Information</h1>
        <jsp:useBean id = "student" class = "student.Student" scope="session"/> 
        <% 
            String regno = request.getParameter("registration_number");
            try{
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/demo","prasoon","prasoon");
                Statement statement = connection.createStatement();
                String query = "SELECT * FROM SCOPE WHERE REGISTRATION_NUMBER = "+"'"+regno+"'";
                ResultSet rs = statement.executeQuery(query);
                while(rs.next()){
                    out.println("<b>Registration Number : </b>"+rs.getString("registration_number")+"<br>"+"<br>");
                    student.setRegistration_number(rs.getString("registration_number"));
                    out.println("<b>Name : </b>"+rs.getString("name")+"<br>"+"<br>");
                    student.setName(rs.getString("name"));
                    out.println("<b>Programme : </b>"+rs.getString("programme")+"<br>"+"<br>");
                    student.setProgramme(rs.getString("programme"));
                    out.println("<b>Year Of Admission : </b>"+rs.getString("year_of_admission")+"<br>"+"<br>");
                    student.setYear_of_admission(Integer.parseInt(rs.getString("year_of_admission")));
                }
                ResultSet forHOD = statement.executeQuery("SELECT * FROM PROGRAMME WHERE PROGRAMME_NAME='"+student.getProgramme()+"'");
                while(forHOD.next()){
                    student.setHod(forHOD.getString("hod"));
                    System.out.println(student.getHod());
                }
                connection.close();
                } catch (Exception e){
                    System.out.println(e);
            }
            
        %>
        <input type="button" onclick="location.href='./hodinfo.jsp';" value="Show HOD Info" />
        <br><br>
        <a href="./index.jsp">Go to Home</a>
    </center>
    </body>
</html>
