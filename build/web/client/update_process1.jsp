<%-- 
    Document   : update_process1
    Created on : 14 Feb, 2019, 2:45:54 PM
    Author     : shraddha
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            try {
                String name = request.getParameter("name");
                String email_1 = request.getParameter("email");
                String mobile = request.getParameter("mobile");
                String addr = request.getParameter("address");

                String email = (String) session.getAttribute("email");
                System.out.println("update_process1" + email);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                String sql = "update citizenRegister set name=?,email=?,mobile=?,address=? where email='"+email+"'";
                PreparedStatement ps = con.prepareStatement(sql);
                System.out.println("ok");
                ps.setString(1, name);
                ps.setString(2, email_1);
                ps.setString(3, mobile);
                ps.setString(4, addr);
                System.out.println("ok");

                int i = ps.executeUpdate();
                System.out.println("ok");
                if (i > 0) {
                    System.out.println("ok");
        %>
        <script type="text/javascript">
            alert("updated successfully");
            window.location = "index.jsp";
        </script>
        <% } else {%>
        <script type="text/javascript">
            alert("update unsuccessful");
            window.location = "index.jsp";
        </script>
        <%  }

            } catch (SQLException sql) {

            }%>
        </body>
</html>
