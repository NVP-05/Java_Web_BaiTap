<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Danh Sách Góp Ý</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 30px;
      background-color: #f8f9fa;
    }
    .list-container {
      background-color: #fff;
      padding: 20px 30px;
      border-radius: 8px;
      max-width: 900px;
      margin: 0 auto;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 15px;
    }
    th, td {
      padding: 12px 15px;
      border: 1px solid #ddd;
      text-align: left;
    }
    th {
      background-color: #007bff;
      color: white;
    }
  </style>
</head>
<body>

<div class="list-container">
  <h2>Danh Sách Góp Ý</h2>
  <table>
    <thead>
    <tr>
      <th>STT</th>
      <th>Họ và tên</th>
      <th>Số điện thoại</th>
      <th>Địa chỉ</th>
      <th>Nội dung góp ý</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="feedback" items="${feedbackList}" varStatus="status">
      <tr>
        <td>${status.index + 1}</td>
        <td>${feedback.fullName}</td>
        <td>${feedback.phone}</td>
        <td>${feedback.address}</td>
        <td>${feedback.content}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>

</body>
</html>
