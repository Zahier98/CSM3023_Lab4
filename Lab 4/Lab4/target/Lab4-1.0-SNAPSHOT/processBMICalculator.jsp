<%-- 
    Document   : processBMICalculator
    Created on : 26 April 2024, 3:37:44 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise</title>
    </head>
    <body>
        <h1>BMI Calculator</h1>
        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));

            double bmi = weight / (Math.pow((height / 100), 2));

            String weightCategory = "";

            if (bmi < 18.5)
                weightCategory = "Underweight";
            else if (bmi >= 25)
                weightCategory = "Overweight";
            else
                weightCategory = "Optimal";
        %>
        <h2>Your BMI Results</h2>
        <p>Your BMI is: <%= String.format("%.1f", bmi) %></p>
        <p>Your weight category is: <%= weightCategory %></p>
    </body>
</html>