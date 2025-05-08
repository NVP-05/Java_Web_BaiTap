package com.example.session01.Bai8.service;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ToggleTaskService", value = "/toggleTask")
public class ToggleTaskService extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        try {
            int taskId = Integer.parseInt(request.getParameter("id"));
            TaskService.toggleTaskStatus(taskId);
        } catch (NumberFormatException e) {
            System.err.println("ID không hợp lệ: " + e.getMessage());
        }

        response.sendRedirect("Bai8.jsp");
    }
}