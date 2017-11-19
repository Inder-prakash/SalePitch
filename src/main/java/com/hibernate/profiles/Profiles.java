package com.hibernate.profiles;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Pattern;

@Entity
public class Profiles {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String username;
	private String email;
	private String password;
	private String phone;
	private String address;
	private String role = "ROLE_USER";
	private boolean active = true;
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	@Pattern(regexp="^[a-zA-Z0-9\\.]{5,20}$",message="* Username Must contain 5 letters and 20 maximum")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Pattern(regexp="^[a-zA-Z0-9\\.]{2,20}@[a-zA-Z]{2,20}\\.[a-zA-Z]{2,20}(\\.[a-zA-Z]{2,20}){0,1}$",message="* Invalid Email Address")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Pattern(regexp="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}$" 
			, message="* Minimum eight characters, "
					+ "at least one uppercase letter,"
					+ " one lowercase letter, "
					+ "one number and one "
					+ "special character:")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Pattern(regexp="^[7-9]{1,1}[0-9]{9,9}$",message="* Invalid Phone Number")
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Pattern(regexp="^[a-zA-Z0-9 ]{8,}$", message="* Invalid Address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Profiles() {
		
	}
	
}
