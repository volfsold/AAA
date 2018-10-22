package zaksim.dto;

import java.util.Date;

public class Profit {
	
	private Date date;
	private int profit;
	
	
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public int getProfit() {
		return profit;
	}
	
	public void setProfit(int profit) {
		this.profit = profit;
	}
	
	@Override
	public String toString() {
		return "Profit [date=" + date + ", profit=" + profit + "]";
	}
}
