package zaksim.dto;

//그룹 좋아요 
public class GroupLike {

	// 인덱스 
	private int idx;

	// 그룹 인덱스 
	private int gruopIdx;

	// 회원 인덱스 
	private int memberIdx;

	@Override
	public String toString() {
		return "GroupLike [idx=" + idx + ", gruopIdx=" + gruopIdx + ", memberIdx=" + memberIdx + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getGruopIdx() {
		return gruopIdx;
	}

	public void setGruopIdx(int gruopIdx) {
		this.gruopIdx = gruopIdx;
	}

	public int getMemberIdx() {
		return memberIdx;
	}

	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}



}
