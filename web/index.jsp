<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Info</title>
    </head>
    <body>
        <center>
        <h1>Find your details.</h1>
        <form method="POST" action="./studentinfo.jsp">
            <label for="registration_number">Enter your Registration Number</label><br><br>
            <input name="registration_number"/><br><br>
            <input type="submit" value="Get Info">
        </form>
        
        </center>
    </body>
</html>
