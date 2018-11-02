package zaksim.community.service;

import java.util.List;

import zaksim.dto.CommunityGroup;

public interface CommunitySearchService {

	
	// 그룹 검색
	public List<CommunityGroup> searchGroup(String keyword);
	
	// 카테고리 검색
	public List<CommunityGroup> searchCategoryGroup(String keyword);
	
	// 키워드 검색
	public List<CommunityGroup> searchKeywordGroup(String Keyword);
	
}
