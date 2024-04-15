<%@ page import="java.sql.*" %>
<html>
<head>
    <title> Login  Responses</title>
    <link rel="stylesheet" href="../output.css">
     <script src="https://cdn.tailwindcss.com"></script> 
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Rubik:ital,wght@0,300..900;1,300..900&display=swap" rel="stylesheet">

</head>
<body class="font-[Rubik]">

    <header class="bg-indigo-950 fixed top-0 left-0 w-full z-50" >
        <nav class="container relative h-14 flex justify-between items-center">
            <img src="../photo/b1.jpeg" alt="logo" class="w-[60px] m-4 rounded-full"/>
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
            <h1 class="text-2xl font-bold mb-4 text-center mt-20"><span class="text-indigo-700">Received</span> <span class="text-indigo-700">Login</span></h1>
	<%
        try {
            // Register the driver
            Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM singup");
            %>

            <div class=" space-x-6 bg-white p-8 rounded-md flex flex-wrap justify-center ">
            <%
            while(rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String cnfpassword = rs.getString("cnfpassword");
                String roll = rs.getString("roll");
                %>

    <!-- Feedback Card -->
    <br>
     <div class="bg-white rounded-md p-6 mb-4 shadow-md w-[400px]  mt-[30px]">
            <div class="mb-4 ">
                <h1 class="text-xl  pl-2 font-bold h-2 "><%= id %></h1>
                <div class="mt-9 font-semibold ">
                <h1 class="font-bold font-serif"><%=username%></h1>
            </div>
            <div class="mb-4">
                <h2 class="font-semibold font-serif"><%= email %></h2>
                <p><span class="font-semibold font-serif">password:</span> <%=password%></p>
            </div>
            <div class="mb-4">
                <p class=" font-semibold font-serif">Comform password:  <span class="font-serif font-semibold"><%= cnfpassword %></span></p>
                <p><span class="font-semibold font-serif">Roll :</span> <%=roll%></p>
            </div>
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