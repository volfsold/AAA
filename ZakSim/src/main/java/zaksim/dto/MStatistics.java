package zaksim.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MStatistics {
	
	private Date today;
	private int todayCount;
	private int joinCount;
	private Date yesterday;
	private int yesterdayCount;
	private int visits;
	
	

	public Date getToday() {
		return today;
	}
	
	public void setToday(Date today) {
		this.today = today;
	}
	
	public int getTodayCount() {
		return todayCount;
	}

	public void setTodayCount(int todayCount) {
		this.todayCount = todayCount;
	}

	public int getJoinCount() {
		return joinCount;
	}

	public void setJoinCount(int joinCount) {
		this.joinCount = joinCount;
	}

	public Date getYesterday() {
		return yesterday;
	}

	public void setYesterday(Date yesterday) {
		this.yesterday = yesterday;
	}

	public int getYesterdayCount() {
		return yesterdayCount;
	}

	public void setYesterdayCount(int yesterdayCount) {
		this.yesterdayCount = yesterdayCount;
	}

	public int getVisits() {
		return visits;
	}

	public void setVisits(int visits) {
		this.visits = visits;
	}

	@Override
	public String toString() {
		return "MStatistics [today=" + today + ", todayCount=" + todayCount + ", joinCount=" + joinCount
				+ ", yesterday=" + yesterday + ", yesterdayCount=" + yesterdayCount + ", visits=" + visits + "]";
	}
}
