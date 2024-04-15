<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
  <html>

  <head>
    <title> Food Resturesnt </title>
    <link href="./output.css" rel="stylesheet">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
      .container{
        display: flex;
        justify-content: space-around;
      }
       .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
            margin-top: 20px;
        }

        .product-card {
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            background-color: #f9f9f9;
            text-align: center;
        }

        .product-card img {
            max-width: 100%;
            height: 70%;
            margin-bottom: 10px;
            margin: auto;
            
        }

        .product-name {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-price {
            font-size: 16px;
            color: #555;
        }
    </style>
  </head>

  <body class="bg-gray-100">

    <!-----------Menu Selection ----------------->
    <header class="bg-indigo-950 fixed top-0 left-0 w-full z-50">
      <nav class="container relative h-14 flex justify-between items-center">
        <img src="./photo/b2.jpeg" alt="logo" class="w-[60px] m-4 rounded-full" />
        <div class="text-white">

          <a href="#" class="text-2xl uppercase">
            <span class="text-yellow-500"> Burger</span> King<i class="fa fa-plate-utensils"></i>
          </a>
        </div>
        <div class=" absolute top-0 left-0 w-full py-14 text-black border-b border-yellow-500 md:block md:static md:py-0 md:border-none md:w-auto md:m-auto">
          <ul class="flex gap-5 text-white justify-center">
            <li>
              <a href="index.html" class="hover:text-yellow-500 ease-in duration-200">Home</a>
            </li>
            <li>
              <a href="photo.html" class="hover:text-yellow-500 ease-in duration-200">Photo</a>
            </li>
            <li>
              <a href="about.html" class="hover:text-yellow-500 ease-in duration-200">About Us</a>
            </li>
            <li>
              <a href="menu.jsp" class=" hover:text-yellow-500 ease-in duration-200">Menu</a>
            </li>
            <li>
              <a href="Feedback.html" class="hover:text-yellow-500 ease-in duration-200">Feedback</a>
            </li>
            <li>
              <a href="login.html" class="hover:text-yellow-500 ease-in duration-200">Login</a>
            </li>
          </ul>
        </div>
        <!-- Icon in Navabar -->
        <div class="absolute top-[0.7rem] right-4 text-2xl cursor-pointer md:hidden" id="nav-close">
          <i class="fa-solid fa-xmark"></i>
        </div>
        </div>
        <div class="flex items-center gap-3 ">
          <i class="fa fa-moon text-2xl cursor-pointer"></i>

          <div class="md:hidden" id="hamburger">
            <i class="fa-solid fa-bars text-2xl cursor-pointer"></i>
          </div>
        </div>
      </nav>
    </header>

    <body class="bg-gray-100 ">
      <h1 class="text-center font-semibold text-3xl uppercase mt-16 hover:"> Burger Section </h1>
      <div class="container mx-auto mt-8 m-1 ">

        <% 
        String imageFormat="image/jpg" ; // Create a list to store the encoded image strings 
        List<String>encodedImageStrings = new ArrayList<>(); 
            try {
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery("select * from uploadproduct1");
            %><div class="container"><%
            while(rs.next()){
            byte image[] = rs.getBytes("image");
            String encodedImageString = Base64.getEncoder().encodeToString(image);
            String productname = rs.getString("productname");
            String productprice = rs.getString("productprice"); 
            encodedImageStrings.add(encodedImageString);
            %>
            <div class="product-card">
              <img alt="Image" src="data:image/<%= imageFormat %>;base64,<%= encodedImageString %>">
              <div class="product-name"><%= productname %></div>
              <div class="product-price"><%= productprice %></div>
          </div>
            <% }
           }
           catch(Exception e) { out.println("Record Not Inserted: " + e);
            }
            %>
          </div>
    </body>
</html>