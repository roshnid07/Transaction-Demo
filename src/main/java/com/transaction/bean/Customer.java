package com.transaction.bean;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Customer {
	private int customerId;
	private String customerName;
	private Date creationDate;
	
	public Customer(){
		
	}
}
