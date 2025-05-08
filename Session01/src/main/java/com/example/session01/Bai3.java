package com.example.session01;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Bai3", value = "/Bai3")
public class Bai3 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String name = "Nguyễn Văn Phúc";
        int age = 20;

        request.setAttribute("name", name);
        request.setAttribute("age", age);

        RequestDispatcher rq = request.getRequestDispatcher("Bai3.jsp");
        rq.forward(request, response);
    }

    public void destroy() {
    }
}