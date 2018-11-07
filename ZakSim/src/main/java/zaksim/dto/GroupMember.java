package zaksim.dto;

// 그룹 참여자
public class GroupMember {
	
	private int idx;
	private int group_idx;
	private int member_idx;
    private CommunityGroup communityGroup;
    
    
	@Override
	public String toString() {
		return "GroupMember [idx=" + idx + ", group_idx=" + group_idx + ", member_idx=" + member_idx
				+ ", communityGroup=" + communityGroup + "]";
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
	public CommunityGroup getCommunityGroup() {
		return communityGroup;
	}
	public void setCommunityGroup(CommunityGroup communityGroup) {
		this.communityGroup = communityGroup;
	}
    
    
	
	
	

	
}
