<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Chi tiết sản phẩm</h1>
<div>
    <p><strong>ID:</strong> ${product.id}</p>
    <p><strong>Tên sản phẩm:</strong> ${product.name}</p>
    <p><strong>Số lượng:</strong> ${product.quantity}</p>
    <p><strong>Giá:</strong> ${product.price}</p>
</div>
<a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a>
</body>
</html>
