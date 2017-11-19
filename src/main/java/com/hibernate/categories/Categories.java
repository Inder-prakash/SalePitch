package com.hibernate.categories;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categories {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int cid;
	private String Cat_name;
	private String description;
	private String image;
	private String imagepublicid;
		
	
	public String getImagepublicid() {
		return imagepublicid;
	}
	public void setImagepublicid(String imagepublicid) {
		this.imagepublicid = imagepublicid;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public String getCat_name() {
		return Cat_name;
	}
	public void setCat_name(String name) {
		this.Cat_name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Categories() {
		
	}
	
}
