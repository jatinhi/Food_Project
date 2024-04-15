<%@page import="java.sql.*" %>
<%
    String nm = request.getParameter("nm");
    String email = request.getParameter("email");
    String cno = request.getParameter("cno");
    String comment = request.getParameter("comment");

    try {
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Food", "root", "");
        Statement st = cn.createStatement();
        st.execute("INSERT INTO `feedbackdb` (`id`, `name`, `email`, `cno`, `comment`) VALUES (NULL, '"+nm+"', '"+email+"', '"+cno+"', '"+comment+"')");
        out.print("Record Successfully Inserted");  
        } catch(Exception e) {
        out.println("Record Not Inserted: " + e);
    }
%>
