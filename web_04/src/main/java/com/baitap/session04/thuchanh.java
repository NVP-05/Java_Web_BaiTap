package com.baitap.session04;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "thuchanh", value = "/thuchanh")
public class thuchanh extends HttpServlet {
    private String message;
    public List<Student> students = new ArrayList<>();
    public void init() {
        students.add(new Student("Nguyễn Văn A", 8.5, "Hà Nội"));
        students.add(new Student("Trần Thị B", 7.8, "Hồ Chí Minh"));
        students.add(new Student("Lê Văn C", 6.9, "Đà Nẵng"));
        students.add(new Student("Phạm Thị D", 9.0, "Cần Thơ"));
        students.add(new Student("Hoàng Văn E", 5.5, "Hải Phòng"));
        students.add(new Student("Đỗ Thị F", 8.0, "Bình Dương"));
        students.add(new Student("Vũ Văn G", 7.2, "Huế"));
        students.add(new Student("Ngô Thị H", 6.8, "Quảng Nam"));
        students.add(new Student("Bùi Văn I", 9.5, "Ninh Bình"));
        students.add(new Student("Trịnh Thị K", 7.0, "Vũng Tàu"));
        getServletContext().setAttribute("students", students);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        List<Student> students = (List<Student>) getServletContext().getAttribute("students");
        request.setAttribute("students", students);
        request.getRequestDispatcher("studentList.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String name = request.getParameter("name");
            String scoreStr = request.getParameter("score");
            String address = request.getParameter("address");
            String message;
            if (name == null || name.trim().isEmpty() || scoreStr == null || scoreStr.trim().isEmpty()) {
                message = "Chưa điền đầy đủ thông tin";
                request.setAttribute("message", message);
                request.getRequestDispatcher("studentList.jsp").forward(request, response);
                return;
            }

            double score = Double.parseDouble(scoreStr);

            List<Student> students = (List<Student>) getServletContext().getAttribute("students");
            if (students == null) {
                students = new ArrayList<>();
            }

            boolean exists = students.stream().anyMatch(student -> student.getName().equalsIgnoreCase(name));
            if (exists) {
                message = "Sinh viên đã tồn tại";
            } else {
                students.add(new Student(name, score, address));
                message = "Thêm sinh viên thành công";
            }
            getServletContext().setAttribute("students", students);
            request.setAttribute("message", message);
            request.setAttribute("students", students);
            request.getRequestDispatcher("studentList.jsp").forward(request, response);
        }
    }



    public void destroy() {
    }
}