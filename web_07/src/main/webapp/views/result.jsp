<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Kết Quả Góp Ý</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      padding: 30px;
      background-color: #f8f9fa;
    }
    .result-container {
      background-color: #fff;
      padding: 20px 30px;
      border-radius: 8px;
      max-width: 700px;
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

<div class="result-container">
  <h2>Thông Tin Góp Ý</h2>
  <table>
    <tr>
      <th>Họ và tên</th>
      <td>${fullName}</td>
    </tr>
    <tr>
      <th>Số điện thoại</th>
      <td>${phone}</td>
    </tr>
    <tr>
      <th>Địa chỉ</th>
      <td>${address}</td>
    </tr>
    <tr>
      <th>Nội dung góp ý</th>
      <td>${content}</td>
    </tr>
  </table>
</div>

</body>
</html>
