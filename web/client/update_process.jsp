<%-- 
    Document   : update_process
    Created on : 14 Feb, 2019, 1:10:39 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Update data from database in jsp</h1>
        <%
            String email = (String) session.getAttribute("email");
            System.out.println("update_process" + email);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
            String sql = "select name,email,address,mobile from citizenRegister where email=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
        %>

        <form action="update_process1.jsp" method="post" >
            First name:<br>
            <input type="text" name="name" value="<%=resultSet.getString("name")%>">
            <br>
            Last name:<br>
            <input type="email" name="email" value="<%=resultSet.getString("email")%>">
            <br>
            City name:<br>
            <input type="text" name="mobile" value="<%=resultSet.getString("mobile")%>">
            <br>
            Email Id:<br>
            <input type="text" name="address" value="<%=resultSet.getString("address")%>">
            <br><br>
            <input type="submit" value="submit">
        </form>
<%}%>
    </body>
</html>
