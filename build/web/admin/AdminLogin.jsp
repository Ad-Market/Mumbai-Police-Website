<%-- 
    Document   : viewRegister
    Created on : 22 Jan, 2019, 1:54:20 PM
    Author     : shraddha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

.bg {
   
    font-size: large;
    font-weight: bold;
    color: #FF0000;
    
}
.tab {
    background-color: #00FFFF;
    //position: relative;
}
.title {
    position: absolute;
    font-weight: bolder;
    font-size: large;
    top: 44px;
    left: 323px;
    width: 425px;
}
.button
{
    background-color: #4CAF50;
    font-size: 30px;
    color: #f1f1f1;
    width:50%;
    position:  relative;
    margin-left: 100px;
}

body {
   
    font-family: Arial;
    padding: 10px;
    background: #6495ED;
}


.menu {
    font-size: medium;
    color: #0066FF;

}
header{
    padding:30px;
    align-content: center;
}
input[type="text"]
{
    height: 30px;
    width: 250px;
}
</style>
    </head>
    <body oncontextmenu="return false" class="body">
     <div class="header" >
            <h1 style="height: 200px; width: 1254px; margin-top: 130px;">
                <img src="C:\Users\shraddha\Desktop\TYBScProjectWork\logo.gif" 
                     style="height: 201px; width: 240px; letter-spacing: 500px; position: relative; top: -66px; 
                     left: 394px;"><div class="auto-style1" style="position: relative; top: -227px; left: 676px;
                     height: 30px; width: 625px; bottom: 227px; margin-top: 0px; align-content: center;>
                    <strong class="auto-style2">MUMBAI POLICE(ADMIN)</strong></div>
        </div>
    <div class="bg">

        <form method="post">
        <table style="width: 30%; height: 350px; top: 200px; left: 269px; vertical-align: middle; margin-top:40px; " align="center" border="1" class="tab" >
            <tr>
                <td class="auto-style1" colspan="2"><center>ADMIN LOGIN</center></td>
        
            </tr>
            <tr>
                <td class="auto-style3">USERNAME:&nbsp&nbsp&nbsp;<input type="text" name="username"></td>
            </tr>
            <tr>
                <td class="auto-style4">PASSWORD:&nbsp&nbsp&nbsp;<input type="text" name="passwd"></td>
            </tr>
             <tr>
                 <td class="auto-style4"><input class="button" type="submit" value="LOGIN" ></td>
            </tr>
            </table>
        </form>
    </div>
       
        <%
            String name=request.getParameter("username");
            String passwd=request.getParameter("passwd");
            
            
              try {
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice","root","root");
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery("select username,password from admin");
             while(rs.next())
             {
                 String username=rs.getString("username");
                 String password=rs.getString("password");
                
                 if(name.equals(username) && passwd.equals(password))
                 {
                     %>
                     <jsp:forward page="header.jsp"></jsp:forward>
                     <%
                     }
                 else
                { %>
                     <script type="text/javascript">
        alert("wrong credentials");
        window.location = "AdminLogin.jsp";
    </script>
                     <%

                 }
             }
         } catch (Exception e) {
         }
    %>
    </body>


</html>
