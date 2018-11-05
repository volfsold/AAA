package zaksim.dao;

import java.util.List;
import java.util.Map;

import zaksim.dto.Challenge;
import zaksim.dto.CommunityGroup;
import zaksim.dto.ZakSimMember;

public interface MypageDao {

	// 유저 정보 로드
	public ZakSimMember memberInfo(String id);
	
	// 유저 정보 수정
	public void updateMember(ZakSimMember member);
	
	// 유저가 참여한 그룹 로드
	public List<CommunityGroup> memberGroup(Map<String, String> param);
	
	// 유저 개인도전 리스트 로드
	public List<Challenge> memberChallenge(Map<String, String> param);
	
	// 유저 탈퇴
	public void deleteMember(String id);
	
	
}
