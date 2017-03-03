<%-- 
    Document   : results
    Created on : Feb 28, 2017, 10:18:43 PM
    Author     : Drew Bolero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Information</title>
        <link rel="stylesheet" type="text/css" href="stylesheet1.css" />
    </head>
    
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hoursworked"));
        double hourlyWage = Integer.parseInt(request.getParameter("hourlywage"));
        int preTaxDeduct = Integer.parseInt(request.getParameter("pretaxdeduct"));
        int postTaxDeduct = Integer.parseInt(request.getParameter("posttaxdeduct"));
        int overtimeHours=0;
        double overtimeRate=0;
        double grossPay=0;
        
        if(hoursWorked > 40)
        {
            int regHours = 40;
            overtimeHours = hoursWorked - 40;
            overtimeRate = hourlyWage * 1.5;
            double overtimePay = overtimeHours * overtimeRate;
            double regPay = regHours * hourlyWage;
            grossPay = regPay + overtimePay;
        }
        else
            grossPay = hoursWorked * hourlyWage;
        
        double taxablePay = grossPay - preTaxDeduct;
        
        double taxAmount;
        if(grossPay < 500)
            taxAmount = taxablePay * 0.18;
        else
            taxAmount = taxablePay * 0.22;
        
        double postTaxPay = taxablePay - taxAmount;
        double netPay = postTaxPay - postTaxDeduct;
    %>
    
    <body>
        <div class="resultsDesign">
        <h1>Salary Details</h1>
        
        <table cellpadding="5" width="50%" bgcolor="#c5e6c3" border="3px solid black" align="center">
            <tbody>
                <tr>
                    <td>Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Wage:</td>
                    <td><%= hourlyWage %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hours:</td>
                    <td><%= overtimeHours %></td>
                </tr>
                
                <tr>
                    <td>Overtime Rate:</td>
                    <td><%= overtimeRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>Pre-Tax Deduct:</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Pre-Tax Pay:</td>
                    <td><%= taxablePay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                
                <tr>
                    <td>Post-Tax Deduct:</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                
                <tr>
                    <td>Post-Tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
                <a id="homenav" href=".">Enter New Information</a>
        </div>
      </body>
</html>
