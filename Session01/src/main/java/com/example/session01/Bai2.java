package com.example.session01;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "Bai2", value = "/Bai2")
public class Bai2 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang=\"vi\">");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\">");
            out.println("<title>Cấu trúc dự án Java Web</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; margin: 20px; line-height: 1.6; }");
            out.println("h1 { color: #2c3e50;  }");
            out.println("p { margin: 5px 0; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container\">");

            out.println("<b>src/main/java:</b>");
            out.println("<p>Chứa tất cả mã nguồn Java của ứng dụng</p>");
            out.println("<p>Nơi đặt các file Java như servlets, beans, controllers, models, và các lớp utility</p>");
            out.println("<p>Được tổ chức theo cấu trúc package</p>");

            out.println("<b>src/main/resources:</b>");
            out.println("<p>Chứa các tài nguyên không phải mã nguồn</p>");
            out.println("<p>Bao gồm file cấu hình như properties, XML, log4j.properties</p>");
            out.println("<p>Chứa các tài nguyên tĩnh khác như file SQL, templates</p>");

            out.println("<b>src/main/webapp:</b>");
            out.println("<p>Đây là thư mục gốc của ứng dụng web</p>");
            out.println("<p>Chứa các file trực tiếp truy cập từ client như HTML, JSP, CSS, JavaScript</p>");
            out.println("<p>Chứa thư mục WEB-INF với các file cấu hình như web.xml</p>");

            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    public void destroy() {
    }
}