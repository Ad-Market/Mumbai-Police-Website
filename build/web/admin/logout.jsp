<%-- 
    Document   : logout
    Created on : 13 Feb, 2019, 10:25:22 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
            session.invalidate();
        %>
        <script type="text/javascript">
            alert("Successfully logout.");
            window.location="index.jsp";
            </script>
            <body></body>
</html>
