<%-- 
    Document   : Register
    Created on : 18 Jan, 2019, 5:18:41 PM
    Author     : shraddha
--%>

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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <%! PreparedStatement ps;%>
    <%
        try {
            String name1 = request.getParameter("name");
            session.setAttribute("name",name1);
            String addr1 = request.getParameter("addr");
            String email1 = request.getParameter("email");
            
            String mobile1 = request.getParameter("mobile");
            String pass11 = request.getParameter("pass1");
            session.setAttribute("pass", pass11);
            String pass21 = request.getParameter("pass2");
            String aadhar1 = request.getParameter("aadhar");
            System.out.println(aadhar1);
            String gender1 = request.getParameter("gen");
            String nation1 = request.getParameter("nation");
            String state1 = request.getParameter("state");
            
            String dob1 = request.getParameter("dob");
            String age1 = request.getParameter("age");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
            PreparedStatement ps = con.prepareStatement("insert into citizenRegister values(?,?,?,?,md5(?),md5(?),?,?,?,?,?,?)");
            ps.setString(1, name1);
            ps.setString(2, addr1);
            ps.setString(3, email1);
            ps.setString(4, mobile1);
            ps.setString(5, pass11);
            ps.setString(6, pass21);
            ps.setString(7, aadhar1);
            ps.setString(8, gender1);
            ps.setString(9, nation1);
            ps.setString(10, state1);
            ps.setString(11, dob1);
            ps.setString(12, age1);
            int i = ps.executeUpdate();
            if (i > 0) {
    %>
  
    <%
        try {
            int randomPIN = (int)(Math.random()*9000)+1000;
            String pin= (randomPIN+"");
           session.setAttribute("auth",pin);
           String a=(String)session.getAttribute("auth");
           System.out.println(a);
            String host = "smtp.gmail.com";
            String user = "shraddhachaudhari810@gmail.com";
            String pass = "sharu5913";
            String to = email1;
            String from = "shraddhachaudhari810@gmail.com";
            String subject = "This is confirmation mail for your citizen account. ";
            String messageText = ("Please insert this number to activate your account:"+pin);
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
        alert("Registration Successful!! Check your Mail and get your authorised code.");
        window.location = "index.jsp";
    </script>

    <%
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
                out.println("Unsuccessful");

            }

        } catch (Exception sqe) {
            request.setAttribute("error", sqe);
            out.println(sqe);

        }

    %>
    <body> 
    </body>
</html>
