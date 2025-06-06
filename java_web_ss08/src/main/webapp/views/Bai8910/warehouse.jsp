<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Your Seed Warehouse</h2>
<table border="1">
    <tr>
        <th>Seed Name</th>
        <th>Image</th>
        <th>Quantity</th>
    </tr>
    <c:forEach var="ws" items="${warehouse}">
        <tr>
            <td>${ws.seeds.seedsName}</td>
            <td><img src="${ws.seeds.imageUrl}" width="100"/></td>
            <td>${ws.quantity}</td>
        </tr>
    </c:forEach>
</table>
<a href="home">Back to Home</a>
</body>
</html>
