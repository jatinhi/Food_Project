<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLDecoder, java.util.*"%>

<html>
<head>
    <title>Users</title>
    <link rel="shortcut icon" href="../projectlogo.ico" type="image/x-icon">
    <link rel="stylesheet" href="./output.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap"
	rel="stylesheet">

</head>
<body>
            <h1 class="text-2xl font-bold mb-4 text-center mt-10">Users</h1>
	<%
        
        String imageFormat = "image/jpg";
		// Create a list to store the encoded image strings
		List<String> encodedImageStrings = new ArrayList<>();
        try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM singup");
            %>
                <div class="container">
                <table class=" bg-white rounded my-6">
                <thead>
        <tr class="border-b">
            <th class="px-2 py-2">
             Username            </th>
            <th class="px-2 py-2">
                Email
            </th>
            <th class="px-2 py-2">
                Password
            </th>
            <th class="px-2 py-2">
                Confirm Password    
            </th>
        
        </tr>
        </thead>
            <%      
                
            while(rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String cnfpassword = rs.getString("cnfpassword");
                %>

        
        <tbody>
        <tr class="border-b hover:bg-gray-100 space-y-3">
        
            <td class="px-4 py-2"><input type="text" value = "<%=username%>" id="unm_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="email" value = "<%=email%>" id="email_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="password" value = "<%=password%>" id="password_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
            <td class="px-4 py-2"><input type="password" value = "<%=cnfpassword%>" id="cnfpassword_<%= id %>" class="focus:outline-none bg-transparent text-center"></td>
             <td class="px-4 py-2">
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 m-1 rounded" type="submit" onclick="updateUser(<%= id %>)">Update</button>

            <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 m-1 mt-1 rounded" type="submit" onclick="deleteUser(<%= id %>)">Delete</button>
            

            </td>
        </tr>
        <script>
    function deleteUser(userId) {
        window.location.href = "deleteuser.jsp?id=" + userId;
    }

    function updateUser(id) {
        // Get the new values from input fields
        var newUsername = document.getElementById('unm_' + id).value;
        var newEmail = document.getElementById('email_' + id).value;
        var newPassword = document.getElementById('password_' + id).value;
        var newcnfpassword = document.getElementById('cnfpassword_' + id).value;
        // Add more fields as needed

        // Encode the values for URL
        var encodedFirstname = encodeURIComponent(newUsername);
        var encodedEmail = encodeURIComponent(newEmail);
        var encodedPassword = encodeURIComponent(newPassword);
        var encodedDob = encodeURIComponent(newcnfpassword);
        // Encode more fields as needed

        // Construct the update URL
        var updateUrl = "updateuser.jsp?id=" + id + "&firstname=" + encodedFirstname + "&surname=" + encodedSurname + "&email=" + encodedEmail + "&password=" + encodedPassword + "&dob=" + encodedDob + "&gender=" + encodedGender + "&city=" + encodedCity + "&occupation=" + encodedOccupation + "&hobbies=" + encodedHobbies + "&relegion=" + encodedRelegion + "&cast=" + encodedCast;
        // Append more fields to the URL as needed

        // Redirect to the update URL
        window.location.href = updateUrl;
    }
</script>


        <%
            }
            %>
        </tbody>
            
    </table>
</div>
                <%
            
        } catch (Exception e) {
            out.println("<p>" + e.getMessage() + "</p>");
        }
        %>
</body>
</html>


<!---
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
  

    if (username != null && password != null)
    {
        try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement st = cn.createStatement();
            ResultSet rs=st.executeQuery("SELECT * FROM singup username = '"+username+"'and password = '"+password+"' ");
            
            if(rs.next())
            {
                String roll = rs.getString("roll");
                session.setAttribute("username",username);
                session.setAttribute("roll",roll);
          

                if(roll.equals("admin"))
                {
                    response.sendRedirect("/admin.html");
                }
                
                else if(roll.equals("user"))
                {
                    response.sendRedirect("index.html");
                }
                
                else
                {
                    response.sendRedirect("login.html");
                }
                cn.close();
            }
    }
          
        catch (Exception e)
        {
            out.println(e);
        }
    }
    else{
        out.println("null");
    }   
    
%>
<p style="color: red"> Error Login </p>
</body>-->