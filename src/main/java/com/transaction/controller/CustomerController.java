package com.transaction.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.transaction.mapper.CustomerMapper;

@RestController
@RequestMapping(value = "/customer")


public class CustomerController {

	@Autowired
	CustomerMapper customerMapper;
	
	@PostMapping("/addCustomer")
	public Integer addCustomer(@RequestParam(value="customerId")  Integer customerId,
								@RequestParam(value="customerName")  String customerName
								) {
		return customerMapper.saveCustomer(customerId, customerName);
	}
}
