<%-- 
    Document   : Login
    Created on : 13 Feb, 2019, 9:46:39 AM
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
        <br><br>
<div class="container">
  <form action="LoginCitizen.jsp">
    <div class="row">
      <h2 style="text-align:center">Login</h2>
      <div class="vl">
         <input type="email" name="email" placeholder="Username as Email" required>
        <input type="password" name="pass1" placeholder="Password" required>
        <input type="submit" value="Login">
      </div>

      

      <div class="col">
        <div class="hide-md-lg">
          <p>Or sign in manually:</p>
        </div>

        
      </div>
      
    </div>
  </form>
</div>

<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="Register.html" style="color:white" class="btn">Sign up</a>
    </div>
    <div class="col">
        <a href="myotp.jsp" style="color:white" class="btn">Forgot password?</a>
    </div>
  </div>
</div>

</body>
</html>
