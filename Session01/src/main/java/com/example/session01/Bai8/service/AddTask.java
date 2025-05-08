package com.example.session01.Bai8.service;

import com.example.session01.Bai8.model.Task;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "AddTask", value = "/AddTask")
public class AddTask extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        String title = request.getParameter("title");

        if (title != null && !title.trim().isEmpty()) {
            Task newTask = new Task(title);
            TaskService.addTask(newTask);
        }

        response.sendRedirect("Bai8.jsp");
    }
}