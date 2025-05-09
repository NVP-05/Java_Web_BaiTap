<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ page import="com.baitap.session04.BT01.Product" %>

<%
    List<Product> productList = new ArrayList<>();
    productList.add(new Product(1, "Laptop", 1500,"a"));
    productList.add(new Product(2, "Chuột", 200,"a"));
    productList.add(new Product(3, "Bàn phím", 300,"a"));
    productList.add(new Product(4, "Màn hình", 1200,"a"));
    productList.add(new Product(5, "USB", 100,"a"));
    request.setAttribute("productList", productList);
%>

<html>
<head>
    <title>Lọc sản phẩm theo giá</title>
</head>
<body>
<h2>Lọc sản phẩm theo khoảng giá</h2>
<form method="get">
    Giá từ: <input type="text" name="minPrice" value="${param.minPrice}" />
    đến: <input type="text" name="maxPrice" value="${param.maxPrice}" />
    <input type="submit" value="Lọc" />
</form>

<hr/>

<c:set var="min" value="${empty param.minPrice ? 0 : param.minPrice}" />
<c:set var="max" value="${empty param.maxPrice ? 999999 : param.maxPrice}" />

<c:set var="found" value="false" />
<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Giá</th>
    </tr>

    <c:forEach var="p" items="${productList}">
        <c:if test="${p.price >= min && p.price <= max}">
            <c:set var="found" value="true" />
            <tr>
                <td>${p.id}</td>
                <td>${p.productName}</td>
                <td>${p.price}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>

<c:if test="${!found}">
    <p><strong>Không có sản phẩm nào trong khoảng giá này.</strong></p>
</c:if>
</body>
</html>
