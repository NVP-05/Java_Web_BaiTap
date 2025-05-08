<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Danh sách học sinh đã đăng ký vé xe</title>
</head>
<body>
<h1>Danh sách học sinh đã đăng ký vé xe</h1>

<table border="1">
  <thead>
  <tr>
    <th>Họ và tên</th>
    <th>Lớp</th>
    <th>Loại xe</th>
    <th>Biển số xe</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="student" items="${studentList}">
    <tr>
      <td>${student.fullName}</td>
      <td>${student.studentClass}</td>
      <td>${student.vehicleType}</td>
      <td>${student.vehicleNumber}</td>
    </tr>
  </c:forEach>
  </tbody>
</table>

<a href="index.jsp">Quay lại trang chủ</a>
</body>
</html>
