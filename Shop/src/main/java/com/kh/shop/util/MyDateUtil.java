package com.kh.shop.util;

import java.util.Calendar;

public class MyDateUtil {
	private static Calendar cal = Calendar.getInstance();
	
	// 오늘 날짜를 문자열로 리턴 
	
	public static String getNowDatToString() {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		
		//String strMonth = "";
		//if( month / 10 == 0) {
		//	strMonth = "0" + month;
		//	
		//}
		//
		//else {
		//	
		//	strMonth = "" + month;
		//}
		
		String strMonth = month / 10 == 0 ? "0" + month : "" + month;
		
		int date = cal.get(Calendar.DATE);
		
		String strDate = date / 10 == 0 ? "0" + date : "" + date;
		return year + "-" + strMonth + "-" + strDate; //2022-4-5
		
	
	}
	
	
	public static String getNowDatToString(String seperator) {
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		
		String strMonth = month / 10 == 0 ? "0" + month : "" + month;
		
		int date = cal.get(Calendar.DATE);
		
		String strDate = date / 10 == 0 ? "0" + date : "" + date;
		return year + seperator + strMonth + seperator + strDate; //2022-4-5
	}
	
	
	//이달의 첫날을 문자열로 리턴
	public static String getFirstDateOfNowMonth() {
		return getNowDatToString().substring(0, 8) + "01";
			
	}
	
	
}
