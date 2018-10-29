package zaksim.dao;

import java.util.List;

import zaksim.dto.CommunityCategory;

public interface CommunityListDAO {

//	// 그룹 리스트
//	public List<CommunityGroup> groupList( );
//	
//	// 인기그룹 리스트
//	public List<CommunityGroup> popularGroupList( );
//		
//	// 새로 시작한 그룹 리스트
//	public List<CommunityGroup> newGroupList( );
	
	// 카테고리 리스트
	public List<CommunityCategory> categoryList();
	
}
