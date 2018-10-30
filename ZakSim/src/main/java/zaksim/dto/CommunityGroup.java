package zaksim.dto;

import java.util.Date;

// 커뮤니티 그룹
public class CommunityGroup {

    // 인덱스 
    private int idx;

    // 생성 회원 인덱스 
    private int memberIdx;

    // 카테고리 
    private int categoryIdx;

    // 타이틀 
    private String title;

    // 소개글 
    private String content;

    // 그룹 이미지 
    private String image;

    // 설정 인원 ~100
    private int max;

    // 생성 날짜 
    private Date openDate;

    // 공개 여부 1(비공개)/0(공개)
    private int secret;

    // 비밀번호 
    private String password;
    
    // 그룹 좋아요
    private GroupLike groupLike;
    
    // 그룹 멤버
    private GroupMember groupMember;
    
    // 그룹 키워드
    private GroupKeyword groupKeyword;
    
    // 그룹 카테고리
    private CommunityCategory communityCategory;

    public GroupLike getGroupLike() {
		return groupLike;
	}

	public void setGroupLike(GroupLike groupLike) {
		this.groupLike = groupLike;
	}

	public GroupMember getGroupMember() {
		return groupMember;
	}

	public void setGroupMember(GroupMember groupMember) {
		this.groupMember = groupMember;
	}

	public GroupKeyword getGroupKeyword() {
		return groupKeyword;
	}

	public void setGroupKeyword(GroupKeyword groupKeyword) {
		this.groupKeyword = groupKeyword;
	}

	public CommunityCategory getCommunityCategory() {
		return communityCategory;
	}

	public void setCommunityCategory(CommunityCategory communityCategory) {
		this.communityCategory = communityCategory;
	}

	public void setSecret(int secret) {
		this.secret = secret;
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

    public int getCategoryIdx() {
        return categoryIdx;
    }

    public void setCategoryIdx(int categoryIdx) {
        this.categoryIdx = categoryIdx;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public Date getOpenDate() {
        return openDate;
    }

    public void setOpenDate(Date openDate) {
        this.openDate = openDate;
    }

    public int getSecret() {
        return secret;
    }



    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	@Override
	public String toString() {
		return "CommunityGroup [idx=" + idx + ", memberIdx=" + memberIdx + ", categoryIdx=" + categoryIdx + ", title="
				+ title + ", content=" + content + ", image=" + image + ", max=" + max + ", openDate=" + openDate
				+ ", secret=" + secret + ", password=" + password + ", groupLike=" + groupLike + ", groupMember="
				+ groupMember + ", groupKeyword=" + groupKeyword + ", communityCategory=" + communityCategory + "]";
	}
    

	
}
