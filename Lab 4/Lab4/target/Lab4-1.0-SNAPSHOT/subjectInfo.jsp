<%-- 
    Document   : subjectInfo
    Created on : 24 April 2024, 3:15:36 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 3</title>
    </head>
    <body>
        <h1>Calling subjectInfo.jsp page</h1>
        <p>Code: <%=request.getParameter("code")%></p>
        <p>Subject: <%=request.getParameter("subject")%></p>
        <p>Credit: <%=request.getParameter("credit")%></p>
    </body>
</html>