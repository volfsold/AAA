package zaksim.dao;

import java.util.List;

import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;
import zaksim.dto.GroupKeyword;

public interface CommunityListDAO {

	// 그룹 리스트
	public List<CommunityGroup> joinedGroupList( );
	
	// 인기그룹 리스트
	public List<CommunityGroup> popularGroupList( );

	// 새로 시작한 그룹 리스트
	public List<CommunityGroup> newGroupList( );
	
	// 카테고리 리스트
	public List<CommunityCategory> categoryList();
	
	// 테스트
	public List<CommunityGroup> test();

	public List<GroupKeyword> test2();
	
}
