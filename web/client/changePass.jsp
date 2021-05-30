<%-- 
    Document   : changePass
    Created on : 7 Feb, 2019, 8:45:35 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
</html>
        <%
            try {
                System.out.println("Start");
                String email = (String) session.getAttribute("email");
                System.out.println(email);
                //String otp1 = (String) session.getAttribute("otp");
                //System.out.println(otp1);
                String p1 = request.getParameter("pass1");
                System.out.println(p1);
                String p2 = request.getParameter("pass2");
                System.out.println(p2);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
               // System.out.println("Connected");
                PreparedStatement ps=con.prepareStatement("update citizenRegister set pass1=md5(?),pass2=md5(?) where email=email");
                //System.out.println("bbb");
                ps.setString(1,p1);
                ps.setString(2,p2);
                //System.out.println(ps);
                int i=ps.executeUpdate();
                //System.out.println("aaa");
                if(i > 0) {
                    System.out.println("Successful");
        %>
        <script type="text/javascript">
            alert("Password Updated...Try to login Now");
            window.location = "Login.jsp";
        </script>

        <%
        } else{
        %>
        <script type="text/javascript">
            alert("Something went wrong.....Try again.");
            window.location = "changepasss.jsp";
        </script><%
               }
            } catch (Exception e) {
                e.getMessage();
            }
        %>
   
