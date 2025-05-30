<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Shop</h2>
<a href="warehouse">Go to Warehouse</a>
<c:forEach var="seed" items="${seedsList}">
    <div>
        <p>${seed.seedsName} - ${seed.price}</p>
        <img src="${seed.imageUrl}" width="100"/>
        <form method="post" action="buySeed">
            <input type="hidden" name="seedId" value="${seed.id}"/>
            <button type="submit">Buy</button>
        </form>
    </div>
</c:forEach>
</body>
</html>
