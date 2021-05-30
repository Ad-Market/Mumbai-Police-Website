<%-- 
    Document   : logout
    Created on : 13 Feb, 2019, 1:51:30 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <script type="text/javascript">
            alert("Successfully logout.");
            window.location="index.jsp";
            </script>
    </body>
</html>
