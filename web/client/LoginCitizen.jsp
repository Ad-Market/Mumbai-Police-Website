<%-- 
    Document   : LoginCitizen
    Created on : 3 Feb, 2019, 6:14:21 PM
    Author     : shraddha
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Locale"%> 
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.IOException"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname = request.getParameter("email");
            session.setAttribute("email", uname);
            String pass = request.getParameter("pass1");
            session.setAttribute("pass", pass);
            //System.out.println(uname);
            //System.out.println(pass);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                System.out.println("Connection created");
                PreparedStatement ps1 = con.prepareStatement("select email,pass1 from citizenRegister "
                        + "where email=? and pass1=md5(?)");
                System.out.println(ps1);
                ps1.setString(1, uname);
                ps1.setString(2, pass);
                ResultSet rs = ps1.executeQuery();
                System.out.println("hello");

                if (rs.next())
                {
                    //  session.setAttribute("user", uname);%>
        <script>
            alert("You have successfully login!");
        </script>
        <%
                    response.sendRedirect("index.jsp");

            }else { %>
        <script type="text/javascript">
            alert("Wrong credentials");
            window.location = "Login.jsp";
        </script>
        <%
                }
            }
            catch (Exception e

            
                ) {
                e.getMessage();
            }%>

        <%


        %>





    </body>
</html>
