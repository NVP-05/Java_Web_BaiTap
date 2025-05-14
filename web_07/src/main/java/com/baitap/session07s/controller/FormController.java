package com.baitap.session07s.controller;

import com.baitap.session07s.modal.Feedback;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FormController {
    private List<Feedback> feedbackList = new ArrayList<>();
    @RequestMapping("form")
    public String form() {
        return "form";
    }
    @RequestMapping(value = "/submitFeedback", method = RequestMethod.POST)
    public String submitFeedback(@RequestParam String fullName,
                                 @RequestParam String phone,
                                 @RequestParam String address,
                                 @RequestParam String content,
                                 Model model) {
        String errorMessage = "";
        if (fullName == null || fullName.trim().isEmpty()) {
            errorMessage = "Họ và tên không được để trống.";
        } else if (content == null || content.trim().isEmpty()) {
            errorMessage = "Nội dung góp ý không được để trống.";
        } else if (!phone.matches("\\d{9,11}")) {
            errorMessage = "Số điện thoại không hợp lệ. Chỉ chứa số, từ 9 đến 11 ký tự.";
        }
        if (!errorMessage.isEmpty()) {
            model.addAttribute("errorMessage", errorMessage);
            model.addAttribute("fullName", fullName);
            model.addAttribute("phone", phone);
            model.addAttribute("address", address);
            model.addAttribute("content", content);
            return "form";
        }
        Feedback feedback = new Feedback(fullName, phone, address, content);
        feedbackList.add(feedback);
        model.addAttribute("message", "Góp ý đã được gửi thành công!");
        model.addAttribute("feedbackList", feedbackList);
        return "list";
    }
    @RequestMapping("/list")
    public String listFeedback(Model model) {
        model.addAttribute("feedbackList", feedbackList);
        return "list";
    }
}
