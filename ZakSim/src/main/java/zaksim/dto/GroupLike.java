package zaksim.dto;

//그룹 좋아요 
public class GroupLike {

	// 인덱스 
	private int idx;

	// 그룹 인덱스 
	private int group_idx;

	// 회원 인덱스 
	private int member_idx;
	
	private int likeNum;

	private CommunityGroup communityGroup;
	
	private ZakSimMember zakSimMember;
	
	private GroupKeyword groupKeyword;

	@Override
	public String toString() {
		return "GroupLike [communityGroup=" + communityGroup + ", group_idx=" + group_idx + ", groupKeyword="
				+ groupKeyword + ", idx=" + idx + ", likeNum=" + likeNum + ", member_idx=" + member_idx
				+ ", zakSimMember=" + zakSimMember + "]";
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public int getGroup_idx() {
		return group_idx;
	}

	public void setGroup_idx(int group_idx) {
		this.group_idx = group_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
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
	
	



	
}