package com.transaction.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.transaction.bean.Transaction;

@Mapper
public interface TransactionMapper {
	 
	 @Insert("INSERT INTO  test.transaction  VALUES(#{transactionId},#{transactionAmount},#{customerId},now())")
	 Integer saveTransaction(@Param("transactionId") Integer transactionId,
			 				 @Param("transactionAmount") Integer transactionAmount,
			 				 @Param("customerId") Integer customerId);
	 
	 @Select("SELECT * FROM test.transaction")
	 List<Transaction>findAllTransactions();
	
}

