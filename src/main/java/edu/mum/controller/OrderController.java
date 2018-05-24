package edu.mum.controller;

import javax.validation.Valid;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import edu.mum.domain.Order;
import edu.mum.service.OrderService;

@Controller
@RequestMapping({"/orderfood"})
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String getFoodOrder(@ModelAttribute("orderFood") Order order) {
		return "orderfood";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String saveFoodOrder(@Valid @ModelAttribute("orderFood") Order order, BindingResult result , Model model) {
		if(result.hasErrors()) {
			return "orderfood";
		}
		orderService.sumbitOrder(order);

		model.addAttribute("result", "Your order is submitted");
		model.addAttribute("order" , order);
		return "orderAccepted";
		
	}

}
