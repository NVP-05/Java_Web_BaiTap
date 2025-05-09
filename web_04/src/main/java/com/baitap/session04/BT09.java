package com.baitap.session04;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "BT09", value = "/BT09")
public class BT09 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Seat> seatList = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            seatList.add(new Seat(i, "A" + i, false));
            seatList.add(new Seat(i + 10, "B" + i, false));
            seatList.add(new Seat(i + 20, "C" + i, i % 2 == 0));
            seatList.add(new Seat(i + 30, "D" + i, false));
            seatList.add(new Seat(i + 40, "E" + i, false));
        }
        request.setAttribute("seatList", seatList);
        request.getRequestDispatcher("seat.jsp").forward(request, response);
    }
}
