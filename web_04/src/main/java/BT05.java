import com.baitap.session04.BT01.Product;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "BT05", value = "/BT05")
public class BT05 extends HttpServlet {
    public static List<Product> products = new ArrayList<Product>();
    public void init() {
        products.add(new Product(1, "iPhone 15", 3000.0, "Sản phẩm mới về"));
        products.add(new Product(2, "Samsung Galaxy S23", 2800.0, "Cao cấp, hiệu năng tốt"));
        products.add(new Product(3, "Xiaomi 13 Pro", 2500.0, "Giá rẻ, cấu hình cao"));
        products.add(new Product(4, "Oppo Find X5", 2700.0, "Thiết kế đẹp, camera tốt"));
        products.add(new Product(5, "Google Pixel 8", 2900.0, "Android gốc, cập nhật nhanh"));
        products.add(new Product(6, "Sony Xperia 1 V", 3100.0, "Màn hình sắc nét, quay phim chuyên nghiệp"));
        products.add(new Product(7, "OnePlus 11", 2600.0, "Hiệu năng mạnh mẽ, sạc siêu nhanh"));
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("productList",products);
        request.getRequestDispatcher("productList.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = products.stream()
                .filter(p -> p.getId() == id)
                .findFirst()
                .orElse(null);

        if (product != null) {
            request.setAttribute("productDetail", product); // ✅ Đúng kiểu Product
        } else {
            request.setAttribute("message", "Không tìm thấy sản phẩm");
        }

        request.getRequestDispatcher("BT05.jsp").forward(request, response);
    }

    public void destroy() {
    }
}