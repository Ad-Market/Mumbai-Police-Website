package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Connection;

public final class viewComplaints_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #6495ED\">\n");
      out.write("    <center><h3>Complaints List</h3></center>\n");
      out.write("    <table align=\"center\" border=\"1\" style=\"width:50%\">\n");
      out.write("\n");
      out.write("        <tr><th>Sr No</th><th>Police station</th><th>Subject</th><th>Complaint type</th><th>Name</th><th>Address</th><th>Phone No</th>\n");
      out.write("            <th>Postal code</th><th>Email</th><th>Authorized Code</th><th>Complaint Description</th><th>Evidence</th><th>Complaint Status</th><th>Complaint Status</th></tr>\n");
      out.write("                ");

                    try {
                        // String policestn, subject, complainttype, name, addr, phone, postalcode, email, authcode, des, img;
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mumPolice", "root", "root");
                        Statement st = con.createStatement();
                       
                        PreparedStatement ps = con.prepareStatement("select * from complaints");
                        ResultSet rs = ps.executeQuery();

                
      out.write("\n");
      out.write("\n");
      out.write("        ");
            while (rs.next()) {
                int i = 1;

        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("        <tr>\n");
      out.write("\n");
      out.write("            <td>");
      out.print( i);
      out.write("</td>\n");
      out.write("            ");
 
                String img = rs.getString("image");
                String policestn = rs.getString("policestn");
                String subject = rs.getString("subject");
                String comptype = rs.getString("comptype");
                String name = rs.getString("fname");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String postalcode = rs.getString("postalcode");
                String email = rs.getString("email");
                String authcode = rs.getString("authcode");
                String compdes = rs.getString("compdes");

                session.setAttribute("email", email);
                session.setAttribute("policestn", policestn);
                session.setAttribute("subject", subject);
                session.setAttribute("comptype", comptype);
                session.setAttribute("name", name);
                session.setAttribute("address", address);
                session.setAttribute("phone", phone);
                session.setAttribute("postalcode", postalcode);
                session.setAttribute("authcode", authcode);
                session.setAttribute("compdes", compdes);
                session.setAttribute("img", img);
            
      out.write("\n");
      out.write("            <td>");
      out.print(rs.getString("subject"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("comptype"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("fname"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("address"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("phone"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("postalcode"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(email);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("authcode"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("compdes"));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString("image"));
      out.write("</td>\n");
      out.write("            <td><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/uploads/");
      out.print(img);
      out.write("\" height=\"150\" width=\"150\"></td>\n");
      out.write("            <td><a href=\"acceptComp.jsp?email= ");
      out.print( rs.getString("email"));
      out.write("\"><button>Verify</button></a></td>\n");
      out.write("            <td><a href=\"declineComp.jsp\"><button>Decline</button></a></td>\n");
      out.write("        </tr>\n");
      out.write("        ");

                    i++;
                }

            } catch (Exception e) {
                e.getMessage();
            }

        
      out.write("  \n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
