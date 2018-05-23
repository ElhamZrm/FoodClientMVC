package edu.mum.rest.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
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
	
	String baseUrl = "http://localhost:8080/FoodDeliveryRestServer/publishOrder";
	String baseUrlExtended = baseUrl + "";
	
	@Override
	public void saveOrder(Order order) {
		RestTemplate restTemplate = restHttpHeader.getRestTemplate();
		HttpEntity<Order> httpEntity = new HttpEntity<Order>(order, restHttpHeader.getHttpHeaders());
		order = restTemplate.postForObject(baseUrl, httpEntity, Order.class);
	
		
	}

}
