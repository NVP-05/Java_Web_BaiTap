<%@ page import="com.baitap.session04.Student" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách sinh viên</title>
    <style>
        table {
            border-collapse: collapse;
            width: 90%;
            margin: 30px auto;
        }
        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h2>Thêm sinh viên</h2>
<form action="thuchanh" method="post" style="text-align: center; margin-bottom: 20px;">
    <label for="name">Họ và tên:</label>
    <input type="text" name="name" id="name" required>
    <label for="score">Điểm:</label>
    <input type="number" name="score" id="score" step="0.1" required>
    <label for="address">Địa chỉ:</label>
    <input type="text" name="address" id="address">
    <input type="hidden" name="action" value="add">
    <input type="submit" value="Thêm">
</form>
<c:if test="${not empty error}">
    <p style="color: red; text-align: center;">${error}</p>
</c:if>
<h2>Danh sách sinh viên</h2>
<table>
    <tr>
        <th>STT</th>
        <th>Họ và tên</th>
        <th>Điểm</th>
        <th>Địa chỉ</th>
        <th>Đánh giá</th>
    </tr>
        <c:forEach var="item" items="${students}" varStatus="status">
            <tr>
                <td>${status.index + 1}</td>
                <td>${item.name}</td>
                <td>${item.score}</td>
                <td>${item.address}</td>
                <td>
                    <c:choose>
                        <c:when test="${item.score >= 8}">
                            Học sinh giỏi
                        </c:when>
                        <c:when test="${item.score >= 6}">
                            Học sinh khá
                        </c:when>
                        <c:otherwise>
                            Học sinh yếu
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
</table>
</body>
</html>
