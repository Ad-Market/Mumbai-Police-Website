<%-- 
    Document   : verifyOTP
    Created on : 5 Feb, 2019, 3:52:23 PM
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
            String OTP = request.getParameter("OTP");
            String email = (String) session.getAttribute("email");
            System.out.println(email);
            String otp1 = (String) session.getAttribute("otp");
            System.out.println(otp1);
            if (OTP.equals(otp1)) {
                response.sendRedirect("changepasss.jsp");

        } else {%>
        <script type="text/javascript">
            alert(" Incorrect OTP.");
            window.location = "Verifyotps.jsp";
        </script><%
            }


        %>
    </body>
</html>
        

    

