
import java.io.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.net.URLEncoder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@MultipartConfig(maxFileSize = 1699999999)
public class uploadproduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part part = request.getPart("productimage");
        InputStream inputstream = part.getInputStream();
        String productname = request.getParameter("productname");
        String productprice = request.getParameter("productprice");
      
        String insert = "insert into uploadproduct (image, productname, productprice) values(?, ?, ?)";

        PrintWriter out = response.getWriter();
        try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            PreparedStatement st = cn.prepareStatement(insert);
            st.setBlob(1, inputstream);
            st.setString(2, productname);
            st.setString(3, productprice);
           
            int rowaffected = st.executeUpdate();
            if (rowaffected > 0) {
                response.sendRedirect("menu.jsp");
            } else {
                out.print("Image not inserted Successfully");
            }
        } catch (Exception e) {
            out.print(e);
        }

    }

}
