package com.example.session01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Bai5", value = "/Bai5")
public class Bai5 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int a = 10;
            int b = 0;
            int result = a / b;
            response.getWriter().write("Kết quả: " + result);
        } catch (ArithmeticException e) {
            request.setAttribute("errorMessage", "Đã xảy ra lỗi trong quá trình xử lý yêu cầu.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }
}