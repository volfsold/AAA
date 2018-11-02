package zaksim.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.CommunitySearchDAO;
import zaksim.dto.CommunityGroup;

@Service
public class CommunitySearchServiceImpl implements CommunitySearchService {

	@Autowired CommunitySearchDAO communitySearchDao;
	
	// 그룹 검색
	@Override
	public List<CommunityGroup> searchGroup(String keyword) {
		
		return communitySearchDao.searchGroup(keyword);
	}

	// 카테고리 검색
	@Override
	public List<CommunityGroup> searchCategoryGroup(String keyword) {
		
		return communitySearchDao.searchCategoryGroup(keyword);
	}

	// 키워드 검색
	@Override
	public List<CommunityGroup> searchKeywordGroup(String Keyword) {
		
		return communitySearchDao.searchKeywordGroup(Keyword);
	}


}
