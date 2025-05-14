<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Danh sách sản phẩm</title>
  <style>
    .product-card {
      border: 1px solid #ddd;
      border-radius: 10px;
      padding: 15px;
      margin: 15px;
      width: 250px;
      text-align: center;
      display: inline-block;
      vertical-align: top;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .product-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      border-radius: 5px;
    }
    .product-card h3 {
      margin: 10px 0;
      font-size: 18px;
    }
    .product-card p {
      margin: 5px 0;
    ;
      border: none;
      padding: 8px 12px;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 5px;
    }
    .product-card button:hover {
      background-color: #0056b3;
    }
    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin: 20px;
    }
    .cart-button {
      background-color: #28a745;
      color: white;
      padding: 10px 15px;
      border-radius: 5px;
      text-decoration: none;
    }
    .cart-button:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>

<div class="top-bar">
  <h1>Danh sách sản phẩm</h1>
  <a href="${pageContext.request.contextPath}/cart" class="cart-button">🛒 Giỏ hàng</a>
</div>

<div>
  <c:forEach var="product" items="${productList}">
    <div class="product-card">
      <img src="${product.image}" alt="${product.name}">
      <h3>${product.name}</h3>
      <p>Giá: ${product.price} VND</p>
      <p>Số lượng trong kho: ${product.stock}</p>
      <form action="${pageContext.request.contextPath}/product_details" method="get">
        <input type="hidden" name="id" value="${product.id}">
        <button type="submit">Xem chi tiết</button>
      </form>
      <form action="${pageContext.request.contextPath}/addToCart" method="get">
        <input type="hidden" name="id" value="${product.id}">
        <input type="number" name="quantity" value="1" min="1" style="width: 60px; margin-top: 10px;">
        <button type="submit">Thêm vào giỏ hàng</button>
      </form>
    </div>
  </c:forEach>
</div>

</body>
</html>
