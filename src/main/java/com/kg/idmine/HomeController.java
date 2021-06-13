package com.kg.idmine;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		System.out.println("index 호출: get");
		
		return "home";
	}
	
	@GetMapping("/blog")
	public void blog() {
		
	}
	
	
	@GetMapping("/blogD")
	public String blog_details() {
		return "blog-details";
	}
	
	@GetMapping("/checkout")
	public String checkout() {
		return "check-out";
	}
	
	@GetMapping("/contact")
	public void contact() {
		
	}
	
	@GetMapping("/faq")
	public void faq() {
		
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/product")
	public void product() {
		
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@GetMapping("/shop")
	public void shop() {
		
	}
	
	@GetMapping("/shoppingcart")
	public String shoppingcart() {
		return "shopping-cart";
	}
	
	
}










