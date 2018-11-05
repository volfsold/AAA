package zaksim.dto;

import java.util.Date;

public class Vow {

	//인덱스
	private int idx;
	//회원 인덱스
	private int memberIdx;
	//서약서 메모
	private String memo;
	//개인 도전 인덱스
	private int challengeIdx;
	//저장명
	private String stored;
	//서약서 생성 날짜
	private Date writtenDate;
	
	
	@Override
	public String toString() {
		return "Vow [idx=" + idx + ", memberIdx=" + memberIdx + ", memo=" + memo + ", challengeIdx=" + challengeIdx
				+ ", stored=" + stored + ", writtenDate=" + writtenDate + "]";
	}


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


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public int getChallengeIdx() {
		return challengeIdx;
	}


	public void setChallengeIdx(int challengeIdx) {
		this.challengeIdx = challengeIdx;
	}


	public String getStored() {
		return stored;
	}


	public void setStored(String stored) {
		this.stored = stored;
	}


	public Date getWrittenDate() {
		return writtenDate;
	}


	public void setWrittenDate(Date writtenDate) {
		this.writtenDate = writtenDate;
	}
	
	
	
	
	
	
}
