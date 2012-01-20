<%-- 
    Document   : login
    Created on : Jan 13, 2012, 8:28:51 PM
    Author     : alex
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login (username:admin, password:pswd)</h1>
        <html:form action="/login">
            <table border="0">
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="LoginActionForm" property="error1" filter="false"/>
                            <bean:write name="LoginActionForm" property="error2" filter="false"/>
                            <bean:write name="LoginActionForm" property="error3" filter="false"/>
                            <bean:write name="LoginActionForm" property="error4" filter="false"/>
                            <bean:write name="LoginActionForm" property="error5" filter="false"/>
                            <bean:write name="LoginActionForm" property="error6" filter="false"/>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>UserName:</td>
                        <td><html:text property="loginName" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><html:password property="loginPassword" /></td>
                    </tr>
                    <tr>
                        <td><html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>
        </html:form>
    </body>
</html>
