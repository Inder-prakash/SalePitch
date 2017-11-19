package com.hibernate;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.hibernate.categories.Categories;
import com.hibernate.categories.CategoriesDAO;
import com.hibernate.loginhistory.LoginHistory;
import com.hibernate.loginhistory.LoginHistoryDAO;
import com.hibernate.loginhistory.LoginHistoryDAOImpl;
import com.hibernate.products.Products;
import com.hibernate.products.ProductsDAO;
import com.hibernate.profiles.Profiles;
import com.hibernate.profiles.ProfilesDAO;
@Controller
public class HibernateController {

	@Autowired
	ProductsDAO pdao;
	@Autowired
	CategoriesDAO cdao;
	@Autowired
	ProfilesDAO udao;
	@Autowired
	LoginHistoryDAO lhdao;
	
	@RequestMapping(value="/loginpage")
	public ModelAndView login() throws IOException{	
		ModelAndView mv = new ModelAndView("login");	
		return mv ;
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@RequestMapping("/delProfiles") 
	public ModelAndView delProfiles(HttpServletRequest req ) {
		String params[] = req.getParameterValues("SelectedId");
		ModelAndView mv = new ModelAndView("redirect:/ViewProfiles");
		for(String p:params) 
		{
			this.udao.delete(Integer.parseInt(p));
		}
		return mv;
	}
	@RequestMapping("/delProducts") 
	public ModelAndView delProducts(HttpServletRequest req ) {
		String params[] = req.getParameterValues("SelectedId");
		ModelAndView mv = new ModelAndView("redirect:/ViewProducts");
		for(String p:params) 
		{
			this.pdao.delete(Integer.parseInt(p));
		}
		return mv;
	}
	@RequestMapping("/deletcategories") 
	public ModelAndView deletcategories(HttpServletRequest req ) {
		String params[] = req.getParameterValues("SelectedId");
		ModelAndView mv = new ModelAndView("redirect:/ViewCategories");
		for(String p:params) 
		{
			this.cdao.delete(Integer.parseInt(p));
		}
		return mv;
	}
	@RequestMapping("/AddProduct")
	public ModelAndView AddProduct() {
		ModelAndView mv = new ModelAndView("AddProduct");	
		mv.addObject("Product", new Products());
		mv.addObject("categoriesdata", cdao.getAllCategories());
		return mv;
	}

	@RequestMapping("/AddCategory")
	public ModelAndView AddCategory() {
		ModelAndView mv = new ModelAndView("AddCategory");
		mv.addObject("Category",new Categories());
		return mv;
	}
	
	@RequestMapping("/SignUP")
	public ModelAndView SignUP() {
		ModelAndView mv = new ModelAndView("registraion");
		mv.addObject("Profile" ,new Profiles() );
		return mv;
	}

	@RequestMapping(value="/AddProductToDb",method=RequestMethod.POST)
	public ModelAndView AddProductToDb(HttpServletRequest req , @RequestParam("file") MultipartFile file, @Valid @ModelAttribute("Product") Products p, BindingResult result) {
		
		ModelAndView mv =  new ModelAndView("redirect:/AddProduct");
		try {
			String path = req.getRealPath("/");
			MultipartFile img = file;
			byte b[] = new byte[img.getInputStream().available()];
			img.getInputStream().read(b);
			FileOutputStream fos = new FileOutputStream(path+"image.jpg");
			fos.write(b);
			fos.close();
			Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                  	"cloud_name", "sales-pitch",
                 	"api_key", "944166299759115",
                 	"api_secret", "POuhE4NcPlkLoFFazzVD_hyDMg4"));
			File f = new File(path+"image.jpg");
			Map uploadResult = cloudinary.uploader().upload(f,ObjectUtils.emptyMap());
			p.setImageurl(uploadResult.get("secure_url").toString());
			p.setImagepublicid(uploadResult.get("public_id").toString());
			this.pdao.insert(p);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@RequestMapping(value="/AddProfileToDb",method=RequestMethod.POST)
	public ModelAndView AddProfileToDb(HttpServletRequest req , @Valid @ModelAttribute("Profile") Profiles p, BindingResult result ) {
		ModelAndView mv = new ModelAndView("redirect:/SignUP");
		
		if(udao.getEmails("devopsjava@gmail.com")) {
			
			System.out.println("devopsjava@gmail.com");
		}
		else
		{
			System.out.println("NULLLLL");
		}
		
		if( result.hasErrors())
		{
			mv = new ModelAndView("registraion");	
			mv.addObject("Profile", p);
			return mv;

		}
		else {
			this.udao.insert(p);
			return mv;
		}
		
	}
	
	@RequestMapping(value="/AddCategoryToDb",method=RequestMethod.POST)
	public ModelAndView AddCategoryToDb(HttpServletRequest req ,@RequestParam("file") MultipartFile file , @Valid @ModelAttribute("Category") Categories c, BindingResult result) {
		ModelAndView mv = new ModelAndView("redirect:/AddCategory");
		try {
			String path = req.getRealPath("/");
			MultipartFile img = file;
			byte b[] = new byte[img.getInputStream().available()];
			img.getInputStream().read(b);
			FileOutputStream fos = new FileOutputStream(path+"image.jpg");
			fos.write(b);
			fos.close();
			Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                  	"cloud_name", "sales-pitch",
                 	"api_key", "944166299759115",
                 	"api_secret", "POuhE4NcPlkLoFFazzVD_hyDMg4"));
			File f = new File(path+"image.jpg");
			Map uploadResult = cloudinary.uploader().upload(f,ObjectUtils.emptyMap());
			c.setImage(uploadResult.get("secure_url").toString());
			c.setImagepublicid(uploadResult.get("public_id").toString());
			this.cdao.insert(c);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	
	@RequestMapping("/ViewLoginHistory")
	public ModelAndView ViewLoginHistory() {
		ModelAndView mv = new ModelAndView("ViewLoginHistory");
		mv.addObject("logindata",lhdao.getAll());
		return mv;
	}
	
	@RequestMapping("/ViewProfiles")
	public ModelAndView ViewProfiles() {
		ModelAndView mv = new ModelAndView("ViewProfiles");
		mv.addObject("profiledata",udao.getAllProfiles());
		return mv;
	}
	@RequestMapping("/ViewProducts")
	public ModelAndView ViewProduct() {
		ModelAndView mv = new ModelAndView("ViewProducts");	
		mv.addObject("productdata", pdao.getAllProducts());
		return mv;
	}
	
	@RequestMapping("/ViewCategories")
	public ModelAndView ViewCategories() {
		ModelAndView mv = new ModelAndView("ViewCategories");	
		mv.addObject("categoriesdata", cdao.getAllCategories());
		return mv;
	}
	
	@RequestMapping("/ViewOneCategory/{id}")
	public ModelAndView ViewOneCategory(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneCategory");
		
		mv.addObject("categoriesdata",cdao.getCategories(abc));
		
		return mv;
	}
	
	
	@RequestMapping("/ViewOneProduct/{id}")
	public ModelAndView ViewOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneProduct");
		
		mv.addObject("productdata",pdao.getProduct(abc));
		
		return mv;
	}
	
	@RequestMapping("/ViewOneProfile/{id}")
	public ModelAndView ViewOneProfile(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("ViewOneProfile");
		
		mv.addObject("profiledata",udao.getProfiles(abc));
		
		return mv;
	}
	
	@RequestMapping("/UpdateOneProduct/{id}")
	public ModelAndView UpdateOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateProduct");	
		mv.addObject("categoriesdata", cdao.getAllCategories());	
		mv.addObject("productdata",pdao.getProduct(abc));
		return mv;
	}
	
	
	@RequestMapping("/UpdateOneProfile/{id}")
	public ModelAndView UpdateOneProfile(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateProfile");	
		mv.addObject("profiledata",udao.getProfiles(abc));
		return mv;
	}

	@RequestMapping("/UpdateOneCategory/{id}")
	public ModelAndView UpdateOneCategory(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("UpdateCategory");
		mv.addObject("categoriesdata",cdao.getCategories(abc));
		return mv;
	}
	
	@RequestMapping(value="/UpdateCategoryToDB",method=RequestMethod.POST)
	public ModelAndView UpdateCategoryToDB( HttpServletRequest req ,@RequestParam("file") MultipartFile file, @Valid @ModelAttribute("categoriesdata") Categories c , BindingResult resultset )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewCategories");		
		try {
			String path = req.getRealPath("/");
			MultipartFile img = file;
			byte b[] = new byte[img.getInputStream().available()];
			img.getInputStream().read(b);
			FileOutputStream fos = new FileOutputStream(path+"image.jpg");
			fos.write(b);
			fos.close();
			Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                  	"cloud_name", "sales-pitch",
                 	"api_key", "944166299759115",
                 	"api_secret", "POuhE4NcPlkLoFFazzVD_hyDMg4"));
			File f = new File(path+"image.jpg");
			
			cloudinary.uploader().destroy(req.getParameter("url"),
				    ObjectUtils.emptyMap());
			
			Map uploadResult = cloudinary.uploader().upload(f,ObjectUtils.emptyMap());
			
			c.setImage(uploadResult.get("secure_url").toString());
			c.setImagepublicid(uploadResult.get("public_id").toString());
			this.cdao.update(c);		
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	@RequestMapping(value="/UpdateProductToDB",method=RequestMethod.POST)
	public ModelAndView UpdateProductToDB( HttpServletRequest req,  @RequestParam("file") MultipartFile file, @Valid @ModelAttribute("productdata") Products p , BindingResult resultset )
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProducts");	
		try {
			String path = req.getRealPath("/");
			MultipartFile img = file;
			byte b[] = new byte[img.getInputStream().available()];
			img.getInputStream().read(b);
			FileOutputStream fos = new FileOutputStream(path+"image.jpg");
			fos.write(b);
			fos.close();
			Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
                  	"cloud_name", "sales-pitch",
                 	"api_key", "944166299759115",
                 	"api_secret", "POuhE4NcPlkLoFFazzVD_hyDMg4"));
			File f = new File(path+"image.jpg");
			
			cloudinary.uploader().destroy(req.getParameter("url"),
				    ObjectUtils.emptyMap());

			Map uploadResult = cloudinary.uploader().upload(f,ObjectUtils.emptyMap());
			p.setImageurl(uploadResult.get("secure_url").toString());
			p.setImagepublicid(uploadResult.get("public_id").toString());
			this.pdao.update(p);	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return mv;
	}	
	
	@RequestMapping(value="/UpdateProfileToDB",method=RequestMethod.POST)
	public ModelAndView UpdateProfileToDB( HttpServletRequest req , @Valid @ModelAttribute("profiledata") Profiles p , BindingResult resultset ) 
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProfiles");	
		this.udao.update(p);
		return mv;
	}
		
	@RequestMapping("/DeleteOneProduct/{id}")
	public ModelAndView DeleteOneProduct(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProducts");	
		pdao.delete(abc);	
		return mv;
	}
	
	@RequestMapping("/DeleteOneProfile/{id}")
	public ModelAndView DeleteOneProfile(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewProfiles");	
		udao.delete(abc);
		return mv;
	}
	
	
	
	@RequestMapping("/DeleteOneCategory/{id}")
	public ModelAndView DeleteOneCategory(@PathVariable("id")int abc)
	{
		ModelAndView mv = new ModelAndView("redirect:/ViewCategories");	
		cdao.delete(abc);		
		return mv;
	}
	


	
}
