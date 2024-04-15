<%@page import="java.sql.*" %>
<%
    String nm = request.getParameter("nm");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String cnfpassword = request.getParameter("cnfpassword");

    if(password.equals(cnfpassword))
    {
        try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
        
            Statement st = cn.createStatement();
            st.execute("INSERT INTO `singup` ( `username`, `email`, `password`, `cnfpassword`,`roll`) VALUES ('"+nm+"', '"+email+"', '"+password+"', '"+cnfpassword+"')");
            out.print("Record Successfully Inserted");
            response.sendRedirect("login.html");
        } 
        catch(Exception e) {
        out.println("Record Not Inserted: " + e);
        }
    }
    else
    {
        response.sendRedirect("signup.html");
    }
%>
