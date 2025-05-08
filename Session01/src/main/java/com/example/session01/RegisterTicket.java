package com.example.session01;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "RegisterTicket ", value = "/RegisterTicket ")
public class RegisterTicket extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String fullname = request.getParameter("fullname");
        String className = request.getParameter("class");
        String vehicleType = request.getParameter("vehicleType");
        String licensePlate = request.getParameter("licensePlate");

        request.setAttribute("fullname", fullname);
        request.setAttribute("className", className);
        request.setAttribute("vehicleType", vehicleType);
        request.setAttribute("licensePlate", licensePlate);

        RequestDispatcher rq = request.getRequestDispatcher("resultRegister.jsp");
        rq.forward(request, response);
    }
}