package zaksim.community.service;

import java.util.List;

import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;
import zaksim.dto.GroupKeyword;

public interface CommunityEditService {
	
	// 카테고리 인덱스 가져오기
	public int getCategoryIdx(int categoryNum);

	// 그룹 개설
	public int createGroup(CommunityGroup communityGroup);
	

	
	// 카테고리 추가
	public void createCategory(CommunityCategory communityCategory);
	
	// 키워드 추가
	public void createKeyword(GroupKeyword groupKeyword);
	
//	// 그룹 수정
//	public void updateGroup(int idx);
	
	
	// 키워드 수정
	public void updateKeyword(int group_index, String keyword);
	
	// 그룹 삭제
	public void deleteGroup(int idx);
	
	// 키워드 삭제
	public void deleteKeyword(int group_idx);
	
	// 그룹 수정
	public void updateGroup(int group_idx);
	

}
