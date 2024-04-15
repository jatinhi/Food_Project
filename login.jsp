<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String roll = request.getParameter("roll");

    // Initializing database connection and statement outside try block
    Connection cn = null;
    PreparedStatement st = null;

    try {
        cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
        st = cn.prepareStatement("select * from singup where username = ? and password = ? and roll=?");
        st.setString(1, username);
        st.setString(2, password);
        st.setString(3, roll);
        // Execute the PreparedStatement
        ResultSet rs = st.executeQuery();
        
        if (rs.next()) {
            if(roll.equals("admin")) {
                response.sendRedirect("admin/admin.html");
            } else if(roll.equals("user")) {
                response.sendRedirect("index.html");
            } else {
                response.sendRedirect("login.html");
            }
        } else {
            // Handle invalid login (e.g., show error message, redirect to login page, etc.)
            response.sendRedirect("login.html?error=invalid");
        }
    } catch (SQLException e) {
        // Handle database errors
        e.printStackTrace(); // Log the exception or handle it according to your application's logic
        // Redirect to an error page or show a generic error message
    }
%>
