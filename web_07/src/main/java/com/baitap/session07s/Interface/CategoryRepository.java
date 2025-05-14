package com.baitap.session07s.Interface;

import com.baitap.session07s.modal.Category;

import java.util.List;

public interface CategoryRepository {
    List<Category> getAllCategories();
    Category getCategoryById(int id);
}
