<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="header.jsp" />
<h3>Đăng nhập</h3>
<form action="" method="POST">
    <input type="text" name="username" placeholder="UserName"><br>
    <input type="password" name="password" placeholder="Password"><br>
    <input type="submit" value="Đăng nhập">
</form>
<c:if test="${param.username != null}">
    <c:if test="${param.username == 'admin' && param.password == '123456'}">
        <h5>Đăng nhập thành công</h5>
        <h6>Xin chào ${param.username}</h6>
    </c:if>
    <c:if test="${param.username != 'admin' || param.password != '123456'}">
        <h5>Đăng nhập thất bại</h5>
        <h6>Sai tài khoản hoặc mật khẩu</h6>
    </c:if>
</c:if>
</body>
</html>
