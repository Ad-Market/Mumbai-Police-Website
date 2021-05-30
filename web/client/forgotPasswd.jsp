<%-- 
    Document   : forgotPass
    Created on : 2 Feb, 2019, 4:15:16 PM
    Author     : shraddha
--%>

<%@page import="java.util.Random"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <%
            try {
                String uname1 = request.getParameter("name");
                System.out.print(uname1);
                String email1 = request.getParameter("email");
                System.out.print(email1);

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                PreparedStatement ps = con.prepareStatement("select name,email from citizenRegister where name=? and email=?");
                ps.setString(1, uname1);
                ps.setString(2, email1);
                ResultSet rs = ps.executeQuery();
                //String message = "";
                while (rs.next()) {
                    int randomPIN = (int) (Math.random() * 9000) + 1000;
                    String pin = (randomPIN + "");
                    session.setAttribute("otp",pin);
                    session.setAttribute("email", email1);
                    String host = "smtp.gmail.com";
                    String user = "user@gmail.com";
                    String pass = "pass";
                    String to = email1;
                    String from = "email-from@gmail.com";
                    String subject = "This is OTP for setting new password. ";
                    String messageText = ("OTP" + "" + pin);
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
                }%>
        <script type="text/javascript">
            alert(" Check your Mail and get your OTP.");
            window.location = "ChangePass.jsp";
        </script>
        <% } catch (Exception e) {
                e.getMessage();
            }
            //HttpSession s=request.getSession();
            //  s.setAttribute("OTP",pin);


        %>

    </body>
</html>
