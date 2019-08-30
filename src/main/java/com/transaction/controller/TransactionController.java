package com.transaction.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.transaction.bean.Transaction;
import com.transaction.bean.Util;
import com.transaction.mapper.TransactionMapper;

import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;


@RestController
@RequestMapping(value = "/trans")
public class TransactionController {

	@Autowired
	TransactionMapper transactionMapper;
	
	@GetMapping("/getRewardPoints")
	@ApiOperation(value = "transaction details", notes = "transaction details")
@ApiResponses(value = {
	@ApiResponse(code = 200, message = "Success"),
	@ApiResponse(code = 401, message = "You are not authorized to view the resource"),
	@ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
	@ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
	}
)	
	public Map<Integer, Map<String,Integer>>getRewardPoints() {
		List<Transaction>customRewardsPoints = transactionMapper.findAllTransactions();
		Map<Integer, Map<String,Integer>> resultMap = new HashMap<Integer, Map<String,Integer>>();
		customRewardsPoints.stream().forEach(transaction -> {
				if(null == resultMap.get(transaction.getCustomerId())) {
					
					Map<String,Integer> transMap = new HashMap<String,Integer>();
					int month = getMonthNumber(transaction);
					int result = 0;
					result = getPoints(transaction);
					transMap.put(Util.getMonth(month), result);
					resultMap.put(transaction.getCustomerId(),transMap);
				}
				else if(null != resultMap.get(transaction.getCustomerId())) {
						Map<String , Integer> temp = resultMap.get(transaction.getCustomerId());
						int month = getMonthNumber(transaction);
						if(null != Util.getMonth(month)) {
							int result = temp.get(Util.getMonth(month)) + getPoints(transaction);
							temp.put(Util.getMonth(month), result);
						}
				}
			
		});
		return resultMap;
	}

	private  int getPoints(Transaction transaction) {
		int points = 0;
		int result = 0;
		if(transaction.getTransactionAmount() > 50 && transaction.getTransactionAmount() <100) {
			 points = (50 - transaction.getTransactionAmount());
			 result += points;
		}
		else if(transaction.getTransactionAmount() > 100) {
			result += 1;
			 points = (100 - transaction.getTransactionAmount())*2;
			result += points;
		}
		return result;
	}

	private static int getMonthNumber(Transaction transaction) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(transaction.getTransactionDate());
		int month = cal.get(Calendar.MONTH);
		return month;
	}
}
