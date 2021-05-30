<%-- 
    Document   : addcomp
    Created on : 30 Jan, 2019, 10:44:23 AM
    Author     : shraddha
--%>
<%@page import="javax.jms.Session"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %> 
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.InputStream" %>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.annotation.MultipartConfig" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! PreparedStatement ps;
            ResultSet rs;
            File file;
            int maxSize = 5000 * 1024;
            int maxFactSize = 5000 * 1024;
            String path = "C:/Users/shraddha/Documents/NetBeansProjects/FinalProject/web/uploads/";
            String str;%>
        <%
            try{
              
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Welcome");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
            System.out.println("Connection created");
            Statement st = con.createStatement();
            ps = null;
            rs = null;
            String policestation = null, subject = null, type1 = null;
            String fname = null, addr = null, mobile = null, postalcode = null, email = null, code = null, des = null;
            String type = request.getContentType();
            System.out.println(type);
            if (type.indexOf("multipart/form-data") >= 0) {   //check is it multipart or not
                System.out.print("its an multipart");
                DiskFileItemFactory disFact = new DiskFileItemFactory();  //for temporary storage
                disFact.setSizeThreshold(maxFactSize); //limitation on storage i.e threshold
                disFact.setRepository(new File("c:\\temp")); //temporary file transfer
                ServletFileUpload upload = new ServletFileUpload(disFact);
                upload.setSizeMax(maxSize); //setting file size
                List lis = upload.parseRequest(request);
                Iterator itr = lis.iterator();
                while (itr.hasNext()) { //for fetching data
                    FileItem item = (FileItem) itr.next();
                    if (item.isFormField()) {

                        if (item.getFieldName().equals("policestation")) {
                            policestation = item.getString();
                        }
                        if (item.getFieldName().equals("subject")) {
                            subject = item.getString();
                        }
                        if (item.getFieldName().equals("type1")) {
                            type1 = item.getString();
                        }
                        if (item.getFieldName().equals("fname")) {
                            fname = item.getString();
                        }
                        if (item.getFieldName().equals("addr")) {
                            addr = item.getString();
                        }
                        if (item.getFieldName().equals("mobile")) {
                            mobile = item.getString();
                        }
                        if (item.getFieldName().equals("postalcode")) {
                            postalcode = item.getString();
                        }

                        if (item.getFieldName().equals("email")) {
                            email = item.getString();
                        }
                        if (item.getFieldName().equals("code")) {
                            code = item.getString();
                        }
                        if (item.getFieldName().equals("des")) {
                            des = item.getString();
                        }
                    } else {
                        str = item.getName();
                        str=fname + (str.substring(str.indexOf(".")));  //for getting the extension
                        System.out.println(str);
                        file = new File(path, str);
                        item.write(file);
                    }
                }
            }

            ps = con.prepareStatement("insert into complaints values(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, policestation);
            ps.setString(2, subject);
            ps.setString(3, type1);
            ps.setString(4, fname);
            ps.setString(5, addr);
            ps.setString(6, mobile);
            ps.setString(7, postalcode);
            ps.setString(8, email);
            ps.setString(9, code);
            ps.setString(10, des);
            ps.setString(11, str);
           // session.setAttribute("photo",str);
            
            
            int i = ps.executeUpdate();
            if (i > 0) {
        %>
        <script type="text/javascript">
            alert("Complaint register successfully");
            window.location = "index.jsp";
        </script>
        <%} else {
        %>
        <script type="text/javascript">
            alert("error");
            window.location = "comp.html";
        </script>
        <%
            }
}
            catch (Exception ex)

            
                {
                ex.printStackTrace();
            }


        %>
    </body>
</html>
