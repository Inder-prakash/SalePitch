package com.hibernate.products;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Products {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;

	private String name;
	private String Cat_name;
	private String description;
	private String price;
	private String imageurl;
	private String imagepublicid;
	
	
	public String getImagepublicid() {
		return imagepublicid;
	}
	public void setImagepublicid(String imagepublicid) {
		this.imagepublicid = imagepublicid;
	}

	
	public String getImageurl() {
		return imageurl;
	}
	public void setImageurl(String imageurl) {
		this.imageurl = imageurl;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCat_name() {
		return Cat_name;
	}
	public void setCat_name(String Cat_name) {
		this.Cat_name = Cat_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Products() {
		
	}
	
}
