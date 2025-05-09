<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>JSP - Hello World</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      margin-top: 30px;
    }
    a {
      margin: 0 10px;
      text-decoration: none;
      color: black;
      font-weight: bold;
    }
  </style>
</head>
<body>

<%-- Include phần header chung --%>
<jsp:include page="header.jsp" />

<h1>Hello World!</h1>

<div>
  <a href="ProductServlet">Bài tập 1</a>
  <a href="login.jsp">Bài tập 2</a>
  <a href="BT04.jsp">Bài tập 4</a>
  <a href="BT05.jsp">Bài tập 5</a>
  <a href="BT06Servlet">Bài tập 6</a>
  <a href="ProductFilter.jsp">Bài tập 7</a>
  <a href="BT08.jsp">Bài tập 8</a>
  <a href="BT09">Bài tập 9</a>
</div>

</body>
</html>
