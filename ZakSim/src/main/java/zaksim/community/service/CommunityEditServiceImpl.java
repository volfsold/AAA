package zaksim.community.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zaksim.dao.CommunityEditDAO;
import zaksim.dto.CommunityGroup;

@Service
public class CommunityEditServiceImpl implements CommunityEditService{

	@Autowired CommunityEditDAO communityEditDAO;
	
	// 그룹 개설
	public void createGroup(CommunityGroup communityGroup) {
		communityEditDAO.createGroup(communityGroup);
	}
	
	// 그룹 수정
	public void updateGroup(CommunityGroup communityGroup) {
		communityEditDAO.updateGroup(communityGroup);
	}
	
	// 그룹 삭제
	public void deleteGroup(CommunityGroup communityGroup) {
		communityEditDAO.deleteGroup(communityGroup);
	}
	
	
}
