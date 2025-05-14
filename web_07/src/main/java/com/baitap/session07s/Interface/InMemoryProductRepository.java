package com.baitap.session07s.Interface;

import com.baitap.session07s.modal.Product2;

import java.util.ArrayList;
import java.util.List;

public class InMemoryProductRepository implements ProductRepository {
    private List<Product2> products = new ArrayList<>();
    private int nextId = 1;

    @Override
    public List<Product2> findAll() {
        return products;
    }

    @Override
    public Product2 findById(int id) {
        return products.stream().filter(p -> p.getId() == id).findFirst().orElse(null);
    }

    @Override
    public void save(Product2 product) {
        product.setId(nextId++);
        products.add(product);
    }

    @Override
    public void update(Product2 product) {
        delete(product.getId());
        products.add(product);
    }

    @Override
    public void delete(int id) {
        products.removeIf(p -> p.getId() == id);
    }

    @Override
    public List<Product2> search(String keyword) {
        return products.stream()
                .filter(p -> p.getName().toLowerCase().contains(keyword.toLowerCase()))
                .toList();
    }
}
