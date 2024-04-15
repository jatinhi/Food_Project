<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Feeback Responses</title>
    <link rel="shortcut icon" href="../projectlogo.ico" type="image/x-icon">
    <link rel="stylesheet" href="../output.css">
     <!-- <script src="https://cdn.tailwindcss.com"></script>  -->
    
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">

</head>
<body>
    <header class="bg-indigo-950 fixed top-0 left-0 w-full z-50" >
        <nav class="container relative h-14 flex justify-between items-center">
            <img src="../photo/b2.jpeg" alt="logo" class="w-[30px] m-4 rounded-full"/>
            <div class="text-white">
                <a href="#" class="text-2xl uppercase">
                <span class="text-yellow-500">FOOD</span> RESTURESNT  
                </a>
            </div>
            <div class=" absolute top-0 left-0 w-full py-14 text-black border-b  border-yellow-500 md:block md:static md:py-0 md:border-none md:w-auto md:m-auto">
                <ul class="flex gap-5 text-white  justify-center ">
                    <li>
                        <a href="admin.html" class="nav__link hover:text-yellow-500 ease-in duration-200">Home</a>
                    </li>
                  
                    <li>
                        <a href="productupload.jsp" class="nav__link hover:text-yellow-500 ease-in duration-200">Product Upload</a>
                    </li>
                    <li>
                        <a href="feedback1.jsp" class="nav__link hover:text-yellow-500 ease-in duration-200">Feedback</a>
                    </li>
                    <li>
                        <a href="singup1.jsp" class="nav__link hover:text-yellow-500 ease-in duration-200">Login</a>
                    </li>
                </ul>
            </div>
   
            <!-- Icon in Navabar -->
            <div class="hiddenabsolute top-[0.7rem] right-2 text-2xl cursor-pointer md:hidden" id="nav-close">
                <i class="fa-solid fa-xmark"></i>
            </div>
     </div>
        <div class="flex items-center gap-5 text-white ">
          <i class="fa fa-moon text-2xl cursor-pointer"></i>

            <div class="md:hidden" id="hamburger">
                <i class="fa-solid fa-bars text-2xl cursor-pointer"></i>
            </div>
        </div>
    </nav>
</header>
            <h1 class="text-2xl  mb-4 text-center mt-10 font-bold" style="text-align: center; margin-top: 80px; "><span class="text-indigo-700 ">Received</span> <span class="text-indigo-700">Feedbacks</span></h1>
	<%
        try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM feedbackdb");
            %>

            <div class=" space-x-6 bg-white p-8 rounded-md flex flex-wrap justify-center ">
            <%
            while(rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String cno = rs.getString("cno");
                String comment = rs.getString("comment");
                %>

    <!-- Feedback Card -->
    <br>
        <div class="bg-white rounded-md p-6 mb-4 shadow-md w-[400px]  mt-[30px]">
            <div class="mb-4">
                <h1 class="text-xl bg-indigo-950 pl-2 font-bold text-white"><%= id %></h1>
                <h2 class="text-lg font-semibold mt-2"><%= name %> & <%= email %></h2>
               
            </div>
            <div class="mb-4">
                <p><span class="font-semibold">Contect:</span> <%=cno%> </p>
            </div>
            <div>   
                <p class=" font-semibold">Comment :</p>
                <p class="text-gray-600">"<%= comment %>"</p>
            </div>
        </div>
                <%

            }
            
        } catch (Exception e) {
            out.println("<p>" + e.getMessage() + "</p>");
        }
        %>
        
</body>
</html>