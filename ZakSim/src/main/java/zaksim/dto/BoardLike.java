package zaksim.dto;

// 게시글 좋아요
public class BoardLike {

    // 인덱스 
    private int idx;

    // 게시글 인덱스 
    private int board_idx;

    // 회원 인덱스 
    private int member_idx;

	@Override
	public String toString() {
		return "BoardLike [idx=" + idx + ", board_idx=" + board_idx + ", member_idx=" + member_idx + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getBoard_idx() {
		return board_idx;
	}

	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}


    
	
}
