package zaksim.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.CommunityListDAO;
import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;
import zaksim.dto.GroupKeyword;
import zaksim.dto.GroupLike;

@Service
public class CommunityListServiceImpl  implements CommunityListService{

	@Autowired CommunityListDAO communityListDAO;

	// 가입한 그룹 리스트
	@Override
	public List<CommunityGroup> joinedGroupList() {
		// TODO Auto-generated method stub
		return communityListDAO.joinedGroupList();
	}
	
	// 카테고리 리스트
	@Override
	public List<CommunityCategory> categoryList() {
		
		return communityListDAO.categoryList();
	}

	// 새로운 그룹 리스트
	@Override
	public List<CommunityGroup> newGroupList() {
		// TODO Auto-generated method stub
		return communityListDAO.newGroupList();
	}

	// 테스트
	@Override
	public List<CommunityGroup> test() {
		// TODO Auto-generated method stub
		return communityListDAO.test();
	}

	@Override
	public List<GroupKeyword> test2() {
		// TODO Auto-generated method stub
		return communityListDAO.test2();
	}
	
	


	
}
