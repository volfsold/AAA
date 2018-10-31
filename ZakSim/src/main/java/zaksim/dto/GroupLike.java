package zaksim.dto;

//그룹 좋아요 
public class GroupLike {

	// 인덱스 
	private int idx;

	// 그룹 인덱스 
	private int groupIdx;

	// 회원 인덱스 
	private int memberIdx;
	
	private int likeNum;


	private CommunityGroup communityGroup;
	
	private ZakSimMember zakSimMember;
	
	private GroupKeyword groupKeyword;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getGroupIdx() {
		return groupIdx;
	}

	public void setGroupIdx(int groupIdx) {
		this.groupIdx = groupIdx;
	}

	public int getMemberIdx() {
		return memberIdx;
	}

	public void setMemberIdx(int memberIdx) {
		this.memberIdx = memberIdx;
	}

	public int getLikeNum() {
		return likeNum;
	}

	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}

	public CommunityGroup getCommunityGroup() {
		return communityGroup;
	}

	public void setCommunityGroup(CommunityGroup communityGroup) {
		this.communityGroup = communityGroup;
	}

	public ZakSimMember getZakSimMember() {
		return zakSimMember;
	}

	public void setZakSimMember(ZakSimMember zakSimMember) {
		this.zakSimMember = zakSimMember;
	}

	public GroupKeyword getGroupKeyword() {
		return groupKeyword;
	}

	public void setGroupKeyword(GroupKeyword groupKeyword) {
		this.groupKeyword = groupKeyword;
	}

	@Override
	public String toString() {
		return "GroupLike [idx=" + idx + ", groupIdx=" + groupIdx + ", memberIdx=" + memberIdx + ", likeNum=" + likeNum
				+ ", communityGroup=" + communityGroup + ", zakSimMember=" + zakSimMember + ", groupKeyword="
				+ groupKeyword + "]";
	}

	
}