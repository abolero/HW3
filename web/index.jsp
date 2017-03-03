<%-- 
    Document   : index
    Created on : Feb 28, 2017, 9:50:02 PM
    Author     : Drew Bolero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drew Bolero HW3</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    </head>
    <body>
        <h1>Salary Calculator</h1>
        <form name="Salary Calculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hoursworked" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Wage:</td>
                        <td><input type="text" name="hourlywage" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-Tax Deduct:</td>
                        <td><input type="text" name="pretaxdeduct" value="" size="50"</td>
                    </tr>
                    
                    <tr>
                        <td>Post-Tax Deduct:</td>
                        <td><input type="text" name="posttaxdeduct" value="" size="50"</td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
