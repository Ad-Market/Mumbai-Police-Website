<%-- 
    Document   : viewComplaints
    Created on : 3 Feb, 2019, 9:15:58 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: #6495ED">
    <center><h3>Complaints List</h3></center>
    <table align="center" border="1" style="width:50%">

        <tr><th>Sr No</th><th>Police station</th><th>Subject</th><th>Complaint type</th><th>Name</th><th>Address</th><th>Phone No</th>
            <th>Postal code</th><th>Email</th><th>Authorized Code</th><th>Complaint Description</th><th>Evidence</th><th>Complaint Status</th><th>Complaint Status</th></tr>
                <%
                    try {
                        // String policestn, subject, complainttype, name, addr, phone, postalcode, email, authcode, des, img;
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                        Statement st = con.createStatement();
                       
                        PreparedStatement ps = con.prepareStatement("select * from complaints");
                        ResultSet rs = ps.executeQuery();

                %>

        <%            while (rs.next()) {
                int i = 1;

        %>
        <tr>
        <tr>

            <td><%= i%></td>
            <% 
                String img = rs.getString("image");
                String policestn = rs.getString("policestn");
                String subject = rs.getString("subject");
                String comptype = rs.getString("comptype");
                String name = rs.getString("fname");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String postalcode = rs.getString("postalcode");
                String email = rs.getString("email");
                String authcode = rs.getString("authcode");
                String compdes = rs.getString("compdes");

                session.setAttribute("email", email);
                session.setAttribute("policestn", policestn);
                session.setAttribute("subject", subject);
                session.setAttribute("comptype", comptype);
                session.setAttribute("name", name);
                session.setAttribute("address", address);
                session.setAttribute("phone", phone);
                session.setAttribute("postalcode", postalcode);
                session.setAttribute("authcode", authcode);
                session.setAttribute("compdes", compdes);
                session.setAttribute("img", img);
            %>
            <td><%=rs.getString("subject")%></td>
            <td><%=rs.getString("comptype")%></td>
            <td><%=rs.getString("fname")%></td>
            <td><%=rs.getString("address")%></td>
            <td><%=rs.getString("phone")%></td>
            <td><%=rs.getString("postalcode")%></td>
            <td><%=email%></td>
            <td><%=rs.getString("authcode")%></td>
            <td><%=rs.getString("compdes")%></td>
            <td><%=rs.getString("image")%></td>
            <td><img src="${pageContext.request.contextPath}/uploads/<%=img%>" height="150" width="150"></td>
            <td><a href="acceptComp.jsp?email= <%= rs.getString("email")%>"><button>Verify</button></a></td>
            <td><a href="declineComp.jsp"><button>Decline</button></a></td>
        </tr>
        <%
                    i++;
                }

            } catch (Exception e) {
                e.getMessage();
            }

        %>  

    </table>





</body>

</html>
