<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product Upload Form</title>
<link rel="stylesheet" href="./output.css">
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<style>
    .custom{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
</style>
</head>
<body>


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
    <form id="productUploadForm" action="http://localhost:8080/tailwind/uploadproduct1" method="post" enctype="multipart/form-data">
            <div class="max-w-lg bg-white p-8 rounded shadow-md custom">
        <h2 class="text-2xl font-bold mb-6 text-center">Product Upload</h2>
            <div class="mb-6 ">
                <label for="productName" class="block text-sm font-medium text-gray-700">Product Name:</label>
                <input type="text" id="productName" name="productname" class="mt-1 p-2 w-full border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-blue-300" required>
            </div>
            <div class="mb-6">
                <label for="productPrice" class="block text-sm font-medium text-gray-700">Price:</label>
                <input type="number" id="productPrice" name="productprice" min="0" step="0.01" class="mt-1 p-2 w-full border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-blue-300" required>
            </div>
            <div class="mb-6">
                <label for="productImage" class="block text-sm font-medium text-gray-700">Image:</label>
                <input type="file" id="productImage" name="productimage" accept="image/*" class="mt-1 p-2 w-full border border-gray-300 rounded-md focus:outline-none focus:ring focus:ring-blue-300" required>
            </div>
            <div class="flex items-center justify-center">
                <button type="submit" class="px-4 py-2 bg-blue-500 text-white rounded-md hover:bg-blue-600 focus:outline-none focus:ring focus:ring-blue-300">Upload Product</button>
            </div>
        </div>
    </form>

    
</body>
</html>
        