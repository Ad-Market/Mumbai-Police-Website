<%-- 
    Document   : changepasss
    Created on : 13 Feb, 2019, 9:56:04 AM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <form  action="changePass.jsp" method="post">
                <div class="row">
                    <h2 style="text-align:center">Change Password</h2>
                    <div class="vl" class="text">
                        New Password <input type="password" name="pass1" placeholder="Enter New Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" required>
                        Retype New Password <input type="password" name="pass2" placeholder="Retype Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"  
                                                   onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');" required>
                        <!-- Retype Pasword <input type="text" name="retype" placeholder="Retype Password" required>--->
                        <input type="submit" value="Update Password">


                    </div> 
                </div>
            </form>
        </div>
    </body>
</html>
