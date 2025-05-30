package com.baitap.session07s.Interface;
import com.baitap.session07s.modal.Product2;
import java.util.List;
public interface ProductRepository {
    List<Product2> findAll();
    List<Product2> search(String keyword);
    Product2 findById(int id);
    void save(Product2 product);
    void update(Product2 product);
    void delete(int id);
}
