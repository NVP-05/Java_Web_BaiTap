<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h1>Giỏ hàng</h1>
<table border="1" cellpadding="10">
  <tr>
    <th>Hình ảnh</th>
    <th>Tên</th>
    <th>Giá</th>
    <th>Số lượng</th>
    <th>Tổng</th>
    <th>Hành động</th>
  </tr>
  <c:forEach var="item" items="${cart}">
    <tr>
      <td><img src="${item.product.image}" width="100"></td>
      <td>${item.product.name}</td>
      <td>${item.product.price} VND</td>
      <td>${item.quantity}</td>
      <td>${item.totalPrice} VND</td>
      <td>
        <a href="increaseQuantity?id=${item.product.id}">➕</a>
        <a href="decreaseQuantity?id=${item.product.id}">➖</a>
        <a href="removeFromCart?id=${item.product.id}">❌</a>
      </td>
    </tr>
  </c:forEach>
</table>

<h3>Tổng cộng: ${total} VND</h3>
<a href="${pageContext.request.contextPath}/product_list" class="back-button">⬅ Quay lại mua hàng</a>

