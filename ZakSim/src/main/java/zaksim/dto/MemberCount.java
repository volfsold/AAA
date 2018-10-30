package zaksim.dto;

import java.util.Date;

public class MemberCount {
	
	private Date memberCountDate;
	private int memberCount;

	
	public Date getMemberCountDate() {
		return memberCountDate;
	}
	
	public void setMemberCountDate(Date memberCountDate) {
		this.memberCountDate = memberCountDate;
	}
	
	public int getMemberCount() {
		return memberCount;
	}
	
	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}
	
	@Override
	public String toString() {
		return "MemberCount [memberCountDate=" + memberCountDate + ", memberCount=" + memberCount + "]";
	}
}
