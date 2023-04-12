package jspbean;

import java.time.LocalDate;

public class Today {
	LocalDate today = LocalDate.now();
	
	public int getYear() {
		return today.getYear();
	}
	public int getMonth() {
		return today.getMonthValue();
	}
	public int getDate() {
		return today.getDayOfMonth();
	}
	
}
