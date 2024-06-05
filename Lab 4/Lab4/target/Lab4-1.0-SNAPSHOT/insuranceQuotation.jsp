<%-- 
    Document   : insuranceQuotation
    Created on : 26 April 2024, 3:27:11 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 5</title>
        <style>
            span {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <form action="processInsuranceQuotation.jsp">
            <fieldset>
                <legend>Insurance Calculation</legend>
                <table>
                    <tr>
                        <td><label for="icNo">IC No<span>*</span>:</label></td>
                        <td><input type="text" name="icNo" id="icNo" placeholder="E.g. 821210-05-3478" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name<span>*</span>:</label></td>
                        <td><input type="text" name="name" id="name" placeholder="E.g. Ali bin Ahmad" required></td>
                    </tr>
                    <tr>
                        <td><label for="marketPrice">Market Price<span>*</span>:</label></td>
                        <td><input type="number" name="marketPrice" id="marketPrice" placeholder="E.g. 4000" required></td>
                    </tr>
                    <tr>
                        <td><label for="coverage">Coverage Type:</label></td>
                        <td>
                            <select name="coverage" id="coverage">
                                <option value="1">Third Party</option>
                                <option value="2">Comprehensive</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="ncd">No Claims Discount (NCD):</label></td>
                        <td>
                            <select name="ncd" id="ncd">
                                <option value="1">10%</option>
                                <option value="2">25%</option>
                                <option value="3">35%</option>
                                <option value="4">55%</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br>
                            <button type="reset">Cancel</button>
                            <button type="submit">Submit</button>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>
</html>