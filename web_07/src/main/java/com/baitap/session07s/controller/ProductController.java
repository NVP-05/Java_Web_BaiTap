package com.baitap.session07s.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.*;
@Controller
public class ProductController {

    @RequestMapping("/products/{category}")
    public String getProductsByCategory(
            @PathVariable String category,
            @MatrixVariable(pathVar = "category", value = "color", required = false) String color,
            @MatrixVariable(pathVar = "category", value = "size", required = false) String size,
            Model model) {
        List<String> products = new ArrayList<>();
        if ("clothing".equals(category)) {
            if ("red".equals(color) && "M".equals(size)) {
                products.add("Áo thun đỏ size M");
            } else if ("blue".equals(color)) {
                products.add("Áo sơ mi xanh");
            } else {
                products.add("Áo khoác");
            }
        } else if ("electronics".equals(category)) {
            products.add("Tai nghe Bluetooth");
            products.add("Điện thoại thông minh");
        } else {
            products.add("Không có sản phẩm phù hợp.");
        }
        model.addAttribute("category", category);
        model.addAttribute("color", color);
        model.addAttribute("size", size);
        model.addAttribute("products", products);
        return "product_matrix";
    }
}
