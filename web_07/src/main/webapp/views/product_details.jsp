<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <style>
        .product-detail-container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            display: flex;
            gap: 30px;
            align-items: flex-start;
        }
        .product-detail-image img {
            width: 400px;
            height: 400px;
            object-fit: cover;
            border-radius: 5px;
        }
        .product-detail-info {
            flex: 1;
        }
        .product-detail-info h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }
        .product-detail-info p {
            margin: 10px 0;
            font-size: 16px;
        }
        .product-detail-info .price {
            font-size: 22px;
            color: #e60000;
            font-weight: bold;
        }
        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 8px 12px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="product-detail-container">
    <div class="product-detail-image">
        <img src="${product.image}" alt="${product.name}">
    </div>
    <div class="product-detail-info">
        <h1>${product.name}</h1>
        <p class="price">Giá: ${product.price} VND</p>
        <p>Số lượng trong kho: ${product.stock}</p>
        <p>${product.description}</p>

        <a href="productList" class="back-button">Quay lại danh sách</a>
    </div>
</div>

</body>
</html>
