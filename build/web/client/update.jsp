<%-- 
    Document   : update
    Created on : 13 Feb, 2019, 10:03:05 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h3><center>Update Personal details</center></h3>
    <center> <table border="1" width="50%" height="20%" style="text-align: center">
        <tr>
            
            <td> name</td>
            <td>email</td>
            <td>mobile</td>
            <td>address</td>
            <td>Action</td>
        </tr>
        <%
            String email=(String)session.getAttribute("email");
            System.out.println("Update Page"+email);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                //Statement statement = con.createStatement();
                String query="select name,email,mobile,address from citizenRegister where email=?";
                PreparedStatement ps= con.prepareStatement(query);
                ps.setString(1,email);
                ResultSet resultSet = ps.executeQuery();
                while (resultSet.next()) {
        %>
        <tr>
            <td><%=resultSet.getString("name")%></td>
            <td><%=resultSet.getString("email")%></td>
            <td><%=resultSet.getString("mobile")%></td>
            <td><%=resultSet.getString("address")%></td>
            <td><a href="update_process.jsp?email=<%=resultSet.getString("email")%>">Update</a>
           
        </tr>
        <%
                }
              
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        </table></center>

</body>
</html>
