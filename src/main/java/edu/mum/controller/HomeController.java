package edu.mum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
  
@Controller
public class HomeController {

 
	@RequestMapping({"/","/welcome"})
	public String welcome(Model model) {
		
		model.addAttribute("greeting", "Welcome to our Food Delivery Service");
		model.addAttribute("tagline", "You can order every thing and its at you door the time you like!");
		
		return "welcome";
		
	}
 
}
