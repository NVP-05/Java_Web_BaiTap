package com.baitap.session04.BT01;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    public static List<Product> products = new ArrayList<Product>();
    public void init() {
        products.add(new Product(1, "iPhone 16", 2500.0, "Sản phẩm mới."));
        products.add(new Product(2, "Samsung Galaxy s20", 2100.0, "Cao cấp."));
        products.add(new Product(3, "Xiaomi 13", 2200.0, "Giá rẻ."));
        products.add(new Product(4, "Oppo Find X5", 2500.0, "Thiết kế đẹp, camera tốt"));
        products.add(new Product(5, "Google 8", 2900.0, "Android gốc, cập nhật nhanh"));
        products.add(new Product(6, "Sony Z5", 3100.0, "Màn hình sắc nét, quay phim chuyên nghiệp"));
        products.add(new Product(7, "OnePlus 10", 2600.0, "Hiệu năng mạnh mẽ, sạc siêu nhanh"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("productList",products);
        request.getRequestDispatcher("productList.jsp").forward(request,response);
    }

    public void destroy() {
    }
}