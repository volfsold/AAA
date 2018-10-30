package zaksim.community.service;

import java.util.List;

import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;

public interface CommunityListService {


	// 가입한 그룹 리스트
	public List<CommunityGroup> joinedGroupList( );
	
	// 카테고리 리스트
	public List<CommunityCategory> categoryList();
	
}
