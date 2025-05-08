package com.example.session01;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "StudentTicketServlet", value = "/StudentTicketServlet")
public class StudentTicketServlet extends HttpServlet {
    private List<Student> studentList = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        studentList.add(new Student("Nguyen Anh Tu", "10A", "Xe máy", "29B1-12345"));
        studentList.add(new Student("Tran Thi Lan", "11B", "Xe đạp", "29B2-67890"));
        studentList.add(new Student("Le Minh Hoang", "12C", "Ô tô", "29B3-11223"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Truyền danh sách học sinh đến JSP
        request.setAttribute("studentList", studentList);
        request.getRequestDispatcher("/listStudent.jsp").forward(request, response);
    }
}