<%@ page import="com.example.session01.Bai8.model.Task" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.session01.Bai8.service.TaskService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <style>
    body {
      font-family: Arial, sans-serif;
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }
    h1 {
      text-align: center;
      color: #333;
    }
    .container {
      display: flex;
      flex-direction: column;
      gap: 20px;
    }
    .form-container {
      background-color: #f5f5f5;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .form-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    input[type="text"] {
      width: 100%;
      padding: 8px;
      border: 1px solid #ddd;
      border-radius: 4px;
      box-sizing: border-box;
    }
    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }
    button:hover {
      background-color: #45a049;
    }
    .tasks-container {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    th, td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #f2f2f2;
    }
    .completed {
      text-decoration: line-through;
      color: #999;
    }
    .action-link {
      color: #2196F3;
      text-decoration: none;
    }
    .action-link:hover {
      text-decoration: underline;
    }
    .no-tasks {
      text-align: center;
      color: #666;
      font-style: italic;
    }
  </style>
  <title>Quản lý công việc</title>
</head>
<body>
<h1>Quản lý công việc</h1>

<div class="container">
  <!-- Form thêm công việc mới -->
  <div class="form-container">
    <h2>Thêm công việc mới</h2>
    <form action="addTask">
      <div class="form-group">
        <label for="title">Tiêu đề công việc:</label>
        <input type="text" id="title" name="title" required>
      </div>
      <button type="submit">Thêm công việc</button>
    </form>
  </div>

  <!-- Danh sách công việc -->
  <div class="tasks-container">
    <h2>Danh sách công việc</h2>

    <%
      List<Task> tasks = TaskService.getAllTasks();

      if (tasks == null || tasks.isEmpty()) {
    %>
    <p class="no-tasks">Chưa có công việc nào.</p>
    <%
    } else {
    %>
    <table>
      <thead>
      <tr>
        <th>ID</th>
        <th>Tiêu đề</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
      </tr>
      </thead>
      <tbody>
      <% for (Task task : tasks) { %>
      <tr>
        <td><%= task.getId() %></td>
        <td class="<%= task.isComplete() ? "completed" : "" %>">
          <%= task.getTitle() %>
        </td>
        <td>
          <%= task.isComplete() ? "Đã hoàn thành" : "Chưa hoàn thành" %>
        </td>
        <td>
          <a href="toggleTask?id=<%= task.getId() %>" class="action-link">
            <%= task.isComplete() ? "Đánh dấu chưa hoàn thành" : "Đánh dấu hoàn thành" %>
          </a>
        </td>
      </tr>
      <% } %>
      </tbody>
    </table>
    <% } %>
  </div>
</div>
</body>
</html>