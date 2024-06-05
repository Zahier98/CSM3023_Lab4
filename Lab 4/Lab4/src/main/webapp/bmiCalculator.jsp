<%-- 
    Document   : bmiCalculator
    Created on : 26 April 2024, 3:36:54 pm
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
        <form action="processBMICalculator.jsp" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td><label for="weight">Weight (kg):</label></td>
                    <td><input type="text" name="weight" id="weight" placeholder="Enter weight"></td>
                </tr>
                <tr>
                    <td><label for="height">Height (cm):</label></td>
                    <td><input type="text" name="height" id="height" placeholder="Enter height"></td>
                </tr>
                <tr>
                    <td>
                        <br>
                        <button type="reset">Clear</button>
                        <button type="submit">Submit</button>
                    </td>
                </tr>
            </table>
        </form>

        <script>
            function validateForm() {
                var weight = document.getElementById("weight").value;
                var height = document.getElementById("height").value;
    
                if (isNaN(weight) || weight <= 0) {
                    alert("Please enter a valid weight.");
                    return false;
                }
    
                if (isNaN(height) || height <= 0) {
                    alert("Please enter a valid height.");
                    return false;
                }
    
                return true;
            }
        </script>
    </body>
</html>