<%-- 
    Document   : authcode
    Created on : 12 Feb, 2019, 7:58:12 PM
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
    </body>
    <%
        String code = request.getParameter("auth");
            String code1 = (String) session.getAttribute("auth");
            System.out.println(code1);
            //String otp1 = (String) session.getAttribute("otp");
            //System.out.println(otp1);
            if (code.equals(code1)) {
                response.sendRedirect("addcomp.html");

        } else {%>
        <script type="text/javascript">
            alert("Wrong code.");
            window.location = "authcode.jsp";
        </script><%
            }


        %>
    
   
</html>
