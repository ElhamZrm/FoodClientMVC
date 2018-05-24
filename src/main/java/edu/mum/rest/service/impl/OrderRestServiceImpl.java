package edu.mum.rest.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import edu.mum.domain.Member;
import edu.mum.domain.Order;
import edu.mum.rest.RestHttpHeader;
import edu.mum.rest.service.OrderRestService;


@Component
public class OrderRestServiceImpl implements OrderRestService{

	@Autowired
	RestHttpHeader restHttpHeader;
	
	String baseUrl = "http://localhost:8080/FoodDeliveryRestServer/greeting";
	String baseUrlExtended = baseUrl + "/";
	
	@Override
	public void saveOrder(Order order) {
		
		RestTemplate restTemplate = restHttpHeader.getRestTemplate();
		HttpEntity<Order> httpEntity = new HttpEntity<Order>(order, restHttpHeader.getHttpHeaders());
		ResponseEntity<Order> response = restTemplate.postForEntity(baseUrl, httpEntity, Order.class);
	
//		HttpEntity<Order> httpEntity = new HttpEntity<Order>(restHttpHeader.getHttpHeaders());
//		ResponseEntity<Order> response = restTemplate.exchange(baseUrl, HttpMethod.GET , httpEntity, Order.class);
	}

}
