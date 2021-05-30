<%-- 
    Document   : viewRegister
    Created on : 22 Jan, 2019, 3:44:25 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h3>Citizen List</h3></center>
        <%
            try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
            Statement st = con.createStatement();
            PreparedStatement ps = con.prepareStatement("select name,email,address,mobile,age,aadhar from citizenRegister");
            ResultSet rs = ps.executeQuery();
        %>

        <table border="1" align='center' cellspacing="4" cellpadding="4">
            <tr><th>Sr No.</th><th>Name</th><th>Email</th><th>Address</th><th>Mobile No</th><th>Age</th><th>Aadhar No</th></tr>
                    <%
                        int  i=1;
                        while (rs.next()) {
                            %>
            <tr>
                <td> <%= i %></td>
                <td> <%= rs.getString("name") %> </td>
                <td> <%= rs.getString("email") %> </td>
                <td> <%= rs.getString("address") %> </td>
                <td> <%= rs.getString("mobile") %> </td>
                <td> <%= rs.getString("age") %> </td>
                <td> <%= rs.getString("aadhar") %> </td>
                
            </tr>
                <%
                    i+=1;
                        }
                    }
catch(Exception e)
{
e.getMessage();
}
                %>
            </tr>
        </table>
    </body>


</html>
