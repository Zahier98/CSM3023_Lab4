<%-- 
    Document   : jspParameter
    Created on : 24 April 2024, 3:14:47 pm
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
        <h1>Using jsp:include and jsp:param to Display Information on JSP Page</h1>

        <%
            String sCode = "CSM3023";
            String sSubject = "Web Based Application Development";
            String sCredit = "3 (2 + 1)";
        %>

        <jsp:include page="subjectInfo.jsp" flush="true">
            <jsp:param name="code" value="<%=sCode%>"/>
            <jsp:param name="subject" value="<%=sSubject%>"/>
            <jsp:param name="credit" value="<%=sCredit%>"/>
        </jsp:include>
    </body>
</html>