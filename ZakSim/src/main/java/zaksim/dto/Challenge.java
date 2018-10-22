package zaksim.dto;

import java.util.Date;

public class Challenge {
	
	private int idx;
	private int memberIdx;
	private Date startDate;
	private Date endDate;
	private int money;
	private String title;
	private String status;
	private String result;
	
	
	
	public int getIdx() {
		return idx;
	}
	
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public int getMemberIdx() {
		return memberIdx;
	}
	
	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	public Date getEndDate() {
		return endDate;
	}
	
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public int getMoney() {
		return money;
	}
	
	public void setMoney(int money) {
		this.money = money;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}
	
	@Override
	public String toString() {
		return "Challenge [idx=" + idx + ", memberIdx=" + memberIdx + ", startDate=" + startDate + ", endDate="
				+ endDate + ", money=" + money + ", title=" + title + ", status=" + status + ", result=" + result + "]";
	}
}
