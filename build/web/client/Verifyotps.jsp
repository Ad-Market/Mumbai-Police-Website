<%-- 
    Document   : Verifyotps
    Created on : 13 Feb, 2019, 9:50:02 AM
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
            <form action="verifyOTP.jsp" method="post">
                <div class="row">
                    <h2 style="text-align:center">Change Password</h2>
                    <div class="vl" class="text">
                        OTP<input type="text" name="OTP" placeholder="Enter OTP" required>
                        <input type="submit" value="Verify OTP">
                    </div> 
                </div>
            </form>
            
        </div>
    </body>
</html>
