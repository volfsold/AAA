package zaksim.dto;

//커뮤니티 카테고리 
public class CommunityCategory {

	// 인덱스 
	private int idx;

	// 카테고리 이름 
	private String category;

	// 카테고리 이미지 
	private String image;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "CommunityCategory [idx=" + idx + ", category=" + category + ", image=" + image + "]";
	}
	
	
}