<%-- 
    Document   : declineComp
    Created on : 11 Feb, 2019, 1:40:41 PM
    Author     : shraddha
--%>

<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Date"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a=(String) session.getAttribute("email");
          String b=(String) session.getAttribute("station");
          
          String host = "smtp.gmail.com";
          String user = "shraddhachaudhari810@gmail.com";
          String pass = "sharu5913";
          String to = a;
          String from = "shraddhachaudhari810@gmail.com";
          String subject = "About your complaint...";
          String messageText = ("Your complaint is declined by the Mumbai Police.Please contact to "+b+"police station for more details.");
          boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject);
            msg.setSentDate(new Date());
            msg.setText(messageText);

            Transport transport = mailSession.getTransport("smtp");
            transport.connect(host, user, pass);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            System.out.println("message send successfully");
      %>
      <script type="text/javascript">
        alert("Mail sent");
        window.location = "viewComplaints.jsp";
    </script>
        %>
    </body>
</html>
