package com.transaction.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface CustomerMapper {
	 
	 @Insert("INSERT INTO  test.customer  VALUES(#{customerId},#{customerName},now())")
	 Integer saveCustomer(@Param("customerId") Integer name, @Param("customerName") String customerName);
	 
	 
	// @Update("")
}

