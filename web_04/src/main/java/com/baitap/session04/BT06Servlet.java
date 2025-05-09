package com.baitap.session04;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "BT06Servlet", value = "/BT06Servlet")
public class BT06Servlet extends HttpServlet {
    private String message;
    public List<StudentBT06> studentBT06List = new ArrayList<StudentBT06>();
    public void init() {
        studentBT06List.add(new StudentBT06(1, "Nguyen Van A", 20, 8.2));
        studentBT06List.add(new StudentBT06(2, "Tran Thi B", 21, 6.9));
        studentBT06List.add(new StudentBT06(3, "Le Van C", 19, 7.5));
        studentBT06List.add(new StudentBT06(4, "Pham Thi D", 22, 6.0));
        getServletContext().setAttribute("studentBT06List", studentBT06List);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<StudentBT06> students = new ArrayList<>();
        students.add(new StudentBT06(1, "Nguyen Van A", 20, 8.2));
        students.add(new StudentBT06(2, "Tran Thi B", 21, 6.9));
        students.add(new StudentBT06(3, "Le Van C", 19, 7.5));
        students.add(new StudentBT06(4, "Pham Thi D", 22, 6.0));

        request.setAttribute("studentBT06List", students);

        RequestDispatcher dispatcher = request.getRequestDispatcher("BT06.jsp");
        dispatcher.forward(request, response);
    }


    public void destroy() {
    }
}