<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <style>
        body {
            background-color: #1f3558;
            font-family: Arial, sans-serif;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px 20px;
        }

        h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .search-box {
            display: flex;
            margin-bottom: 30px;
        }

        .search-box input {
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px 0 0 5px;
            width: 250px;
        }

        .search-box button {
            padding: 10px 15px;
            font-size: 16px;
            background-color: #1e90ff;
            color: white;
            border: none;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
        }

        hr {
            width: 60%;
            border: 0.5px solid #ccc;
            margin: 30px 0;
        }

        .product-info {
            text-align: center;
            line-height: 1.8;
        }

        .not-found {
            margin-top: 30px;
            text-align: center;
        }

        .not-found h2 {
            font-size: 24px;
            color: #fff;
        }

        .not-found p {
            font-size: 16px;
            color: #ccc;
        }
    </style>
</head>
<body>
<h1>Produt Details</h1>

<form action="BT05" method="post">
    <div class="search-box">
        <input type="text" name="id" placeholder="Nhap id san pham" required>
        <button>Search</button>
    </div>
</form>

<hr>

<c:choose>
    <c:when test="${not empty productDetail}">
        <div class="product-info">
            <div><strong>ID:</strong> ${productDetail.id}</div>
            <div><strong>Name:</strong> ${productDetail.productName}</div>
            <div><strong>Price:</strong> ${productDetail.price}</div>
        </div>
    </c:when>
    <c:otherwise>
        <div class="not-found">
            <h2>Khong tim thay san pham</h2>
        </div>
    </c:otherwise>
</c:choose>

</body>
</html>
