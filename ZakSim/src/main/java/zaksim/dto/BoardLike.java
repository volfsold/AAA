package zaksim.dto;

// 게시글 좋아요
public class BoardLike {

    // 인덱스 
    private int idx;

    // 게시글 인덱스 
    private int boardIdx;

    // 회원 인덱스 
    private int memberIdx;

	@Override
	public String toString() {
		return "BoardLike [idx=" + idx + ", boardIdx=" + boardIdx + ", memberIdx=" + memberIdx + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getBoardIdx() {
		return boardIdx;
	}

	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}

	public int getMemberIdx() {
		return memberIdx;
	}

	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}
    
    
	
}
