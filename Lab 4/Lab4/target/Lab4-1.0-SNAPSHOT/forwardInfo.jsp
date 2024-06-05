<%-- 
    Document   : forwardInfo
    Created on : 25 April 2024, 3:21:38 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 4</title>
    </head>
    <body>      
        <% 
            String name = request.getParameter("u_name"); 
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String background = request.getParameter("background");

            if (name != null) {%>
                <b>
                    <br>
                    <br>
                    <h2 align="center">
                        <%= name %><br>
                        <%= email %><br>
                        <%= nationality %><br>
                        <%= background %><br>
                        <br>
                        <% out.print("Today is: " + java.util.Calendar.getInstance().getTime()); %>
                    </h2>
                </b>
                <br>
                <%
            }
        %>
    </body>
</html>