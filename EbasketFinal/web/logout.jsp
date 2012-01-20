<%-- 
    Document   : logout
    Created on : Jan 15, 2012, 2:15:10 AM
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
        <title>Logout Page</title>
    </head>
    <body>
        <br>
       
        <html:form action="/logout">
            <html:submit value="Logout" />
        </html:form>
        
    </body>
</html>
