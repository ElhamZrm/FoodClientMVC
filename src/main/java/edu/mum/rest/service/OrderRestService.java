package edu.mum.rest.service;

import org.springframework.stereotype.Component;
import edu.mum.domain.Order;

@Component
public interface OrderRestService {
	
	public void saveOrder(Order order);

}
