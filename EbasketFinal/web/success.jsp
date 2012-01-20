<%-- 
   Document   : success
   Created on : Jan 13, 2012, 8:59:51 PM
   Author     : alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have successfully logged in!</h1>

        <jsp:useBean id="firstItem" class="beans.Ebasket" scope="session"/>
        <jsp:useBean id="secondItem" class="beans.Ebasket" scope="session"/>
        <jsp:useBean id="thirdItem" class="beans.Ebasket" scope="session"/>

        <jsp:setProperty name="firstItem" property="itemName" param="coffee" />
        <jsp:setProperty name="secondItem" property="itemName" param="sugar" />
        <jsp:setProperty name="thirdItem" property="itemName" param="water" />

        <form method="POST" >
            <table border="2">
                <tr>
                    <th>Item</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>

                <tr>
                    <td>Cafe</td>
                    <td>  ${initParam.coffee}</td>
                    <td><input type="text" name="coffee" value ="${firstItem.itemName}" /></td>

                    <td>  ${initParam.coffee*firstItem.itemName}  </td>
                </tr>
                <tr>
                    <td>Sugar</td>
                    <td> ${initParam.sugar}</td>
                    <td><input type="text" name="sugar" value ="${secondItem.itemName}" /></td>
                    <td>${initParam.sugar*secondItem.itemName}</td>
                </tr>
                <tr>
                    <td>Water</td>
                    <td>${initParam.water}  </td>
                    <td><input type="text" name="water" value ="${thirdItem.itemName}"/></td>
                    <td>${initParam.water*thirdItem.itemName}</td>
                </tr>
                <tr>
                    <td> <input type="submit" value = "Submit" />  </td>
                    <td></td>
                    <td></td>
                    <td>${initParam.coffee*firstItem.itemName+initParam.sugar*secondItem.itemName+initParam.water*thirdItem.itemName}</td>
                </tr>

            </table>
        </form>

        <jsp:include page="logout.jsp" />

    </body>
</html>
