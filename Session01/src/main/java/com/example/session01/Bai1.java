package com.example.session01;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Bai1", value = "/Bai1")
public class Bai1 extends HttpServlet {
    private String message;

    public void init() {
        message = "Thư mục webapp/: Đây là gốc của nội dung ứng dụng web.\n" +
                "Thư mục WEB-INF/: Chứa các tệp cấu hình và mã nguồn của ứng dụng.\n" +
                "Thư mục classes/: Chứa các tệp .class đã biên dịch.\n" +
                "Thư mục lib/: Chứa các tệp JAR thư viện của ứng dụng.\n" +
                "Tệp web.xml: Tệp cấu hình chính của ứng dụng web.\n" +
                "Các tệp JSP, HTML, CSS, JavaScript: Nằm trong thư mục webapp.";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html lang=\"vi\">");
        out.println("<head>");
        out.println("<meta charset=\"UTF-8\">");
        out.println("<title>Cấu trúc webapp</title>");
        out.println("<style>");
        out.println("body { font-family: Arial, sans-serif; margin: 15px; }");
        out.println("pre { background-color: #f5f5f5; padding: 15px; border-radius: 5px; }");
        out.println("h1 { color: red; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Cấu trúc thư mục trong Java Web Application</h1>");
        out.println("<pre>" + message + "</pre>");
        out.println("</body>");
        out.println("</html>");
    }

    public void destroy() {
    }
}