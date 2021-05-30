<%-- 
    Document   : acceptComp
    Created on : 11 Feb, 2019, 1:40:14 PM
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
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.annotation.MultipartConfig" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            try {

                String email = request.getParameter("email");
                String policestn = (String) session.getAttribute("policestn");
                String subj = (String) session.getAttribute("subject");
                String comptype = (String) session.getAttribute("comptype");
                String name = (String) session.getAttribute("fname");
                String addr = (String) session.getAttribute("address");
                String phone = (String) session.getAttribute("phone");
                String postalcode = (String) session.getAttribute("postalcode");
                String authcode = (String) session.getAttribute("authcode");
                String compdes = (String) session.getAttribute("compdes");
                String image=(String)session.getAttribute("img");

                //String stn = (String) session.getAttribute("station");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                PreparedStatement ps = con.prepareStatement("insert into verifiedComp values(?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,policestn);
                ps.setString(2,subj);
                ps.setString(3,comptype);
                ps.setString(4,name);
                ps.setString(5,addr);
                ps.setString(6,phone);
                ps.setString(7,postalcode);
                ps.setString(8,email);
                ps.setString(9,authcode);
                ps.setString(10,compdes);
                ps.setString(11,image);

                int i = ps.executeUpdate();
                if (i > 0) {
                    try {

                        String host = "smtp.gmail.com";
                        String user = "shraddhachaudhari810@gmail.com";
                        String pass = "sharu5913";
                        String to = email;
                        String from = "shraddhachaudhari810@gmail.com";
                        String subject = "About your complaint...";
                        String messageText = ("Your complaint is sucessfully verified by the Mumbai Police.Please contact to " + policestn + " police station for further enquiry");
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
            alert("Mail sent to complainant");
            window.location = "viewComplaints.jsp";
        </script><%} catch (Exception e) {
       e.getMessage();
   }
   //Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
   PreparedStatement ps1 = con.prepareStatement("delete from complaints where email=?");
   ps1.setString(1, email);
   System.out.println("Deleted");

}
} catch (Exception e) {
e.getMessage();
}
        %>

    </body>
</html>
