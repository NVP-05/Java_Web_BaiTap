package com.baitap.session07s.controller;

import com.baitap.session07s.modal.CartItem;
import com.baitap.session07s.modal.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@SessionAttributes("cart")
public class ListController {
    @ModelAttribute("cart")
    public List<CartItem> createCart() {
        return new ArrayList<>();
    }
    private List<Product> getProductList() {
        List<Product> products = new ArrayList<>();
        products.add(new Product(1L, "Laptop Dell XPS", 25000000.0, 10, "Laptop cao cấp cho dân văn phòng.", "https://via.placeholder.com/400x400?text=Laptop+Dell"));
        products.add(new Product(2L, "iPhone 15 Pro", 35000000.0, 5, "Điện thoại cao cấp của Apple.", "https://via.placeholder.com/400x400?text=iPhone+15+Pro"));
        products.add(new Product(3L, "Samsung Galaxy S24", 28000000.0, 8, "Smartphone flagship của Samsung.", "https://via.placeholder.com/400x400?text=Galaxy+S24"));
        products.add(new Product(4L, "Tai nghe Sony WH-1000XM5", 8000000.0, 15, "Tai nghe chống ồn hàng đầu.", "https://via.placeholder.com/400x400?text=Sony+WH-1000XM5"));
        return products;
    }
    @RequestMapping("product_list")
    public String product_list(Model model) {
        model.addAttribute("productList", getProductList());
        return "product_list";
    }
    @RequestMapping("product_details")
    public String product_details(@RequestParam("id") Long id, Model model) {
        Product product = null;
        for (Product p : getProductList()) {
            if (p.getId().equals(id)) {
                product = p;
                break;
            }
        }
        if (product != null) {
            model.addAttribute("product", product);
        } else {
            model.addAttribute("error", "Không tìm thấy sản phẩm.");
        }
        return "product_details";
    }
    @RequestMapping("addToCart")
    public String addToCart(@RequestParam("id") Long id,
                            @RequestParam("quantity") int quantity,
                            @ModelAttribute("cart") List<CartItem> cart,
                            Model model) {
        if (quantity <= 0) {
            model.addAttribute("error", "Số lượng phải lớn hơn 0.");
            return "redirect:product_list";
        }

        Product selectedProduct = null;
        for (Product p : getProductList()) {
            if (p.getId().equals(id)) {
                selectedProduct = p;
                break;
            }
        }

        if (selectedProduct == null) {
            model.addAttribute("error", "Không tìm thấy sản phẩm.");
            return "redirect:product_list";
        }

        for (CartItem item : cart) {
            if (item.getProduct().getId().equals(id)) {
                item.setQuantity(item.getQuantity() + quantity);
                return "redirect:product_list";
            }
        }

        cart.add(new CartItem(selectedProduct, quantity));
        return "redirect:product_list";
    }

    @RequestMapping("cart")
    public String showCart(@ModelAttribute("cart") List<CartItem> cart, Model model) {
        double total = 0;
        for (CartItem item : cart) {
            total += item.getTotalPrice();
        }
        model.addAttribute("total", total);
        return "cart";
    }

    @RequestMapping("increaseQuantity")
    public String increaseQuantity(@RequestParam("id") Long id,
                                   @ModelAttribute("cart") List<CartItem> cart) {
        for (CartItem item : cart) {
            if (item.getProduct().getId().equals(id)) {
                item.setQuantity(item.getQuantity() + 1);
                break;
            }
        }
        return "redirect:cart";
    }

    @RequestMapping("decreaseQuantity")
    public String decreaseQuantity(@RequestParam("id") Long id,
                                   @ModelAttribute("cart") List<CartItem> cart) {
        for (CartItem item : cart) {
            if (item.getProduct().getId().equals(id)) {
                if (item.getQuantity() > 1) {
                    item.setQuantity(item.getQuantity() - 1);
                }
                break;
            }
        }
        return "redirect:cart";
    }

    @RequestMapping("removeFromCart")
    public String removeFromCart(@RequestParam("id") Long id,
                                 @ModelAttribute("cart") List<CartItem> cart) {
        cart.removeIf(item -> item.getProduct().getId().equals(id));
        return "redirect:cart";
    }
}
