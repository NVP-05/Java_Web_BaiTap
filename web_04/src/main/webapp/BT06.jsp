<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Danh sách sinh viên</title>
</head>
<body>
<h2>Danh sách sinh viên</h2>
<table border="1" cellpadding="8">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Điểm Trung Bình</th>
    </tr>

    <c:set var="count" value="0" />
    <c:forEach var="student" items="${studentBT06List}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.gpa}</td>
        </tr>

        <c:if test="${student.gpa > 7.0}">
            <c:set var="count" value="${count + 1}" />
        </c:if>
    </c:forEach>
</table>

<p><strong>Số sinh viên có điểm trung bình lớn hơn 7.0:</strong> ${count}</p>
</body>
</html>

