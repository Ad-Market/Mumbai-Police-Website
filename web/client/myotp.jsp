<%-- 
    Document   : myotp
    Created on : 13 Feb, 2019, 9:51:50 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container">
        <form action="Otp.jsp" method="post">
            <div class="row">
                <h2 style="text-align:center">SEND ME OTP</h2>
                <div class="vl">
                    <input type="text" name="name" placeholder="Enter Name" required>
                    <input type="email" name="email" placeholder="Email ID" required>
                    <input type="submit" value="SEND OTP">
                </div>
            </div>
        </form>
    </div>
   
   
    </body>
</html>
