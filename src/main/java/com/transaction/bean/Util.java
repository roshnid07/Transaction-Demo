package com.transaction.bean;

import java.util.HashMap;
import java.util.Map;

public class Util {
	static Map<Integer,String> yearMap = new HashMap<>();
	static {
		yearMap.put(1, "JAN");
		yearMap.put(2, "FEB");
		yearMap.put(3, "MAR");
		yearMap.put(4, "APR");
		yearMap.put(5, "MAY");
		yearMap.put(6, "JUN");
		yearMap.put(7, "JUL");
		yearMap.put(8, "AUG");
		yearMap.put(9, "SEP");
		yearMap.put(10, "OCT");
		yearMap.put(11, "NOV");
		yearMap.put(12, "DEC");
	}
	
	public static String getMonth(Integer month) {
		return yearMap.get(month);
	}
}
