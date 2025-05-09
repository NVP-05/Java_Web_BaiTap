<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Navigation Bar</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .navbar {
            background-color: #0078d7; /* Màu xanh */
            padding: 15px 0;
            text-align: center;
        }

        .nav-links {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            display: inline-block;
            margin: 0 30px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
        }

        .nav-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<nav class="navbar">
    <ul class="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">Product</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
    </ul>
</nav>
</body>
</html>
