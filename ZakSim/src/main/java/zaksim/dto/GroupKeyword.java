package zaksim.dto;

// 그룹 키워드
public class GroupKeyword {
	
	private 	int idx;
	private int group_idx;
	private String keyword;
	private CommunityGroup communityGroup;
	

	public CommunityGroup getCommunityGroup() {
		return communityGroup;
	}
	public void setCommunityGroup(CommunityGroup communityGroup) {
		this.communityGroup = communityGroup;
	}
	@Override
	public String toString() {
		return "GroupKeyword [idx=" + idx + ", group_idx=" + group_idx + ", keyword=" + keyword + ", communityGroup="
				+ communityGroup + "]";
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
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
