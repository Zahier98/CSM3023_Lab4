<%-- 
    Document   : processCustomer
    Created on : 24 April 2024, 2:55:07 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 1</title>
    </head>
    <body>
        <h1>Use JSP Scriplet and JSP Expression in Application</h1>

        <%
            final int PRICE = 10;
            
            //Using JSP Scriplet..
            String custCode = request.getParameter("custCode");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String custType = request.getParameter("custType");

            //Determine customer..
            if (custType.equals("1") && quantity > 100) {
                out.print("<h2>You are entitle 10%.</h2>");
                out.print("<h2>Total amount is RM " + String.format("%.2f", quantity * PRICE * 0.9) + ".</h2>");
            }
            else if (custType.equals("2") && quantity > 100) {
                out.print("<h2>You are entitle 25%.</h2>");
                out.print("<h2>Total amount is RM " + String.format("%.2f", quantity * PRICE * 0.75) + ".</h2>");
            }
            else {
                out.print("<h2>You are not entitle discount..!</h2>");
                out.print("<h2>Total amount is RM " + String.format("%.2f", (double) (quantity * PRICE)) + ".</h2>");
            }
        %>
    </body>
</html>