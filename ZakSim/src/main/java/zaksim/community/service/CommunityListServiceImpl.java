package zaksim.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.CommunityListDAO;
import zaksim.dto.CommunityCategory;
import zaksim.dto.CommunityGroup;

@Service
public class CommunityListServiceImpl  implements CommunityListService{

	@Autowired CommunityListDAO communityListDAO;

	@Override
	public List<CommunityGroup> joinedGroupList() {
		// TODO Auto-generated method stub
		return communityListDAO.joinedGroupList();
	}
	
	@Override
	public List<CommunityCategory> categoryList() {
		
		return communityListDAO.categoryList();
	}


	
}
