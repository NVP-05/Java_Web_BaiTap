<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="UserServlet" method="post">
  <label>Tên:</label><br>
  <input type="text" name="name" required><br><br>
  <label>Email:</label><br>
  <input type="email" name="email" required><br><br>
  <button type="submit">Đăng ký</button>
</form>
</body>
</html>
