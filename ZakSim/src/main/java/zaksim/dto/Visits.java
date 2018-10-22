package zaksim.dto;

import java.util.Date;

public class Visits {
	
	private Date visitDate;
	private int visits;
	
	
	
	public Date getVisitDate() {
		return visitDate;
	}
	
	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}
	
	public int getVisits() {
		return visits;
	}
	
	public void setVisits(int visits) {
		this.visits = visits;
	}
	
	@Override
	public String toString() {
		return "Visits [visitDate=" + visitDate + ", visits=" + visits + "]";
	}
}
