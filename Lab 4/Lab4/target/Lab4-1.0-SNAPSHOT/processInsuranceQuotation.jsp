<%-- 
    Document   : processInsuranceQuotation
    Created on : 26 April 2024, 3:27:45 pm
    Author     : Zahier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 5</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
    
            legend {
                font-size: 20px;
                font-weight: bold;
            }
    
            p {
                color: blueviolet;
            }
        </style>
    </head>
    <body>
        <%
            String icNo = request.getParameter("icNo");
            String name = request.getParameter("name");
            int marketPrice = Integer.parseInt(request.getParameter("marketPrice"));
            String coverage = request.getParameter("coverage");
            String ncd = request.getParameter("ncd");
            double amount = 0.00f;
            double gst = 0.00f;
            double final_amount = 0.00f;
            String strCoverage = "";
            String strNCD = "";

            switch (coverage) {
                case "1":
                    strCoverage = "Third Party";
                    switch (ncd) {
                        case "1":
                            strNCD = "10%";
                            amount = 0.033 * marketPrice;
                            break;

                        case "2":
                            strNCD = "25%";
                            amount = 0.025 * marketPrice;
                            break;

                        case "3":
                            strNCD = "35%";
                            amount = 0.018 * marketPrice;
                            break;

                        case "4":
                            strNCD = "55%";
                            amount = 0.012 * marketPrice;
                            break;
                    }
                    break;
                
                case "2":
                    strCoverage = "Comprehensive";
                    switch (ncd) {
                        case "1":
                            strNCD = "10%";
                            amount = 0.038 * marketPrice;
                            break;

                        case "2":
                            strNCD = "25%";
                            amount = 0.030 * marketPrice;
                            break;

                        case "3":
                            strNCD = "35%";
                            amount = 0.024 * marketPrice;
                            break;

                        case "4":
                            strNCD = "55%";
                            amount = 0.018 * marketPrice;
                            break;
                    }
                    break;
            }

            gst = 0.06 * amount;
            final_amount = amount + gst;
        %>

        <fieldset>
            <legend>Details of Insurance Quotation</legend>
            <p>IC No: <%= icNo %></p>
            <p>Customer Name: <%= name %></p>
            <p>Market Price: <%= marketPrice %></p>
            <p>Coverage Type: <%= strCoverage %></p>
            <p>No Claim Discount (NCD): <%= strNCD %></p>
            <p>Insurance Amount: <%= String.format("%.2f", amount) %></p>
            <p>6% GST: <%= String.format("%.2f", gst) %></p>
            <p>Final Amount (with 6% GST): <%= String.format("%.2f", final_amount) %></p>
        </fieldset>
    </body>
</html>