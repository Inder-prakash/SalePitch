package com.hibernate.products;

import java.util.List;

public interface ProductsDAO {
	void insert(Products p);
	void update(Products p);
	void delete(int pid);
	Products getProduct(int pid);
	List<Products> getAllProducts();
}
