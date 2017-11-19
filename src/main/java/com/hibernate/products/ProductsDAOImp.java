package com.hibernate.products;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hibernate.products.Products;

@Repository
@Transactional
public class ProductsDAOImp implements ProductsDAO {

	@Autowired 
	private SessionFactory sessionFactory;
	public void insert(Products p) {
		this.sessionFactory.getCurrentSession().save(p);
	}

	public void update(Products p) {
		this.sessionFactory.getCurrentSession().update(p);
	}

	public void delete(int pid) {
		this.sessionFactory.getCurrentSession().createQuery("delete from Products where pid=:id").setInteger("id", pid).executeUpdate();
	}

	public Products getProduct(int pid) {
		return (Products)this.sessionFactory.getCurrentSession().createQuery("from Products where pid=:id").setInteger("id", pid).list().get(0);
	}

	public List<Products> getAllProducts() {
		return (List<Products>)this.sessionFactory.getCurrentSession().createQuery("from Products").list();
	}
}
