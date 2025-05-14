<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Sản phẩm theo Matrix Variables</title>
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<p>Danh mục: ${category}</p>
<p>Màu: ${color}</p>
<p>Kích cỡ: ${size}</p>

<ul>
    <c:forEach var="product" items="${products}">
        <li>${product}</li>
    </c:forEach>
</ul>
</body>
</html>
