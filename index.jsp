<%-- 
    Document   : index
    Created on : 13 Δεκ 2011, 7:58:04 μμ
    Author     : Ioannis
--%>

<jsp:useBean id="Coffe" scope="page" class="newpackage.Item" />
<jsp:useBean id="Sugar" scope="page" class="newpackage.Item" />
<jsp:useBean id="Water" scope="page" class="newpackage.Item" />
<jsp:useBean id="GrandTotal" scope="page" class="newpackage.GrandTotal" />

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:setProperty name="Coffe" property="price" value="${initParam.Coffe}" />
        <jsp:setProperty name="Sugar" property="price" value="${initParam.Sugar}" />
        <jsp:setProperty name="Water" property="price" value="${initParam.Water}"/>
        
        
        <h1>Welcome!</h1> 
        <form action="index.jsp" method="POST">
            <table border="1" width="1" cellspacing="1" cellpadding="1">
                <thead>
                    <tr>
                        <th>Item</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Coffe</td>
                        <td>${initParam.Coffe}</td>
                        <td><input type="text" name="CoffeAmount" value="${param.CoffeAmount}" /></td>
                        <jsp:setProperty name="Coffe" property="quantity" value="${param.CoffeAmount}" />
                        <jsp:setProperty name="GrandTotal" property="price1" value="${initParam.Coffe * param.CoffeAmount}" />
                        <td><jsp:getProperty name="Coffe" property="total" /></td>
                    </tr>
                    <tr>
                        <td>Sugar</td>
                        <td>${initParam.Sugar}</td>
                        <td><input type="text" name="SugarAmount" value="${param.SugarAmount}" /></td>
                        <jsp:setProperty name="Sugar" property="quantity" value="${param.SugarAmount}" />
                        <jsp:setProperty name="GrandTotal" property="price2" value="${initParam.Sugar * param.SugarAmount}" />
                        <td><jsp:getProperty name="Sugar" property="total" /></td>
                    </tr>
                    <tr>
                        <td>Water</td>
                        <td>${initParam.Water}</td>
                        <td><input type="text" name="WaterAmount" value="${param.WaterAmount}" /></td>
                        <jsp:setProperty name="Water" property="quantity" value="${param.WaterAmount}" />
                        <jsp:setProperty name="GrandTotal" property="price3" value="${initParam.Water * param.WaterAmount}" />
                        <td><jsp:getProperty name="Water" property="total" /></td>
                    </tr>
                    <tr>
                        <td>GrandTotal</td>
                        <td></td>
                        <td></td>
                        <td><jsp:getProperty name="GrandTotal" property="grand" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit" value="CASHIER" />
        </form>
                    
                    <form action="http://iospanak.wordpress.com/2011/12/14/project-3-shopping-cart-report-scriptless/" method="GET">
                        <input type="submit" value="Report"/>
                    </form>    
                    <form action="https://github.com/iospanak/Project-3-Shopping-Cart-Scriptless" method="GET">
                        <input type="submit" value="CODE" />
                    </form>   
    </body>
</html>
