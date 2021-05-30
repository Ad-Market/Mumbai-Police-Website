<%-- 
    Document   : myOtp
    Created on : 6 Feb, 2019, 2:15:33 PM
    Author     : shraddha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Locale"%> 
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% try {
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                session.setAttribute("email", email);
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                System.out.println("Connection created");
                String q = "select name,email from citizenRegister where name=? and email=?";
                PreparedStatement ps = con.prepareStatement(q);
                ps.setString(1, name);
                ps.setString(2, email);
                ResultSet rs = ps.executeQuery();
                //System.out.println("abcd");
                while (rs.next()) {
                    int randomPIN = (int) (Math.random() * 9000) + 1000;
                    String pin = (randomPIN + "");
                    session.setAttribute("otp", pin);
                    String host = "smtp.gmail.com";
                    String user = "shraddhachaudhari810@gmail.com";
                    String pass = "sharu5913";
                    String to = email;
                    String from = "shraddhachaudhari810@gmail.com";
                    String subject = "This is  mail for your OTP. ";
                    String messageText = ("Your OTP is: " + randomPIN);
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
                    System.out.println("message send successfully");%>
        <script type="text/javascript">
            alert("Check Mail ");
            window.location("Verifyotps.jsp");


        </script>
        <%

            }}catch (Exception e) {
                e.getMessage();
            }
        %>


    </body>
</html>
