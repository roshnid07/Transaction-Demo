package com.transaction.bean;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Transaction {
	private Integer transactionId;
	private Integer transactionAmount;
	private Date transactionDate;
	private Integer customerId;
	public Transaction(){
		
	}
}
