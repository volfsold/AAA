package zaksim.dto;

public class Sign {

	// 인덱스
	private int idx;
	// 회원 인덱스
	private int memberIdx;
	// 저장명
	private String stored;
	
	
	@Override
	public String toString() {
		return "Sign [idx=" + idx + ", memberIdx=" + memberIdx + ", stored=" + stored + "]";
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


	public String getStored() {
		return stored;
	}


	public void setStored(String stored) {
		this.stored = stored;
	}
	
	
	
}
